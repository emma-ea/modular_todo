import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:modular_todo/src/landing.dart';
import 'package:monitoring/monitoring.dart';

void main() {
  final errorReportingService = ErrorReportingService();

  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    initializeMonitoringService();

    FlutterError.onError = errorReportingService.recordFlutterError;

    Isolate.current.addErrorListener(RawReceivePort((pair) async {
      final List<dynamic> errorAndStackTrace = pair;
      await errorReportingService.recordError(
        errorAndStackTrace.first,
        errorAndStackTrace.last,
      );
    }).sendPort);

    runApp(const MainApp());
  },
      (error, stack) => errorReportingService.recordError(
            error,
            stack,
            fatal: true,
          ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LandingPage(),
      ),
    );
  }
}
