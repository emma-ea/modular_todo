library monitoring;

import 'package:firebase_core/firebase_core.dart';

export 'src/error_reporting_service.dart';
export 'src/analytics_service.dart';

void initializeMonitoringService() => Firebase.initializeApp();
