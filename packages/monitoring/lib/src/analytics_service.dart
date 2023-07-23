import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  AnalyticsService({FirebaseAnalytics? analytics})
      : _analytics = analytics ?? FirebaseAnalytics.instance;

  final FirebaseAnalytics _analytics;

  void setCurrentScreen({String? screenName}) {
    _analytics.setCurrentScreen(screenName: screenName);
  }

  void logEvent(
      {required String eventName, Map<String, dynamic>? eventParams}) {
    _analytics.logEvent(name: eventName, parameters: eventParams);
  }
}
