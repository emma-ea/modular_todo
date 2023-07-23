import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class ErrorReportingService {
  ErrorReportingService({FirebaseCrashlytics? crashlytics})
      : _crashlytics = crashlytics ?? FirebaseCrashlytics.instance;

  final FirebaseCrashlytics _crashlytics;

  Future<void> recordFlutterError(FlutterErrorDetails flutterError) async {
    return _crashlytics.recordFlutterError(flutterError);
  }

  Future<void> recordError(dynamic exception, StackTrace? stack,
      {bool fatal = false}) async {
    return _crashlytics.recordError(exception, stack, fatal: fatal);
  }
}
