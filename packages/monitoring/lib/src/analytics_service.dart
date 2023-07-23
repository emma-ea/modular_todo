import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  AnalyticsService({FirebaseAnalytics? analytics})
      : _analytics = analytics ?? FirebaseAnalytics.instance;

  final FirebaseAnalytics _analytics;

  Future<void> setCurrentScreen({String? screenName}) async {
    return _analytics.setCurrentScreen(screenName: screenName);
  }

  Future<void> logEvent(
      {required String eventName, Map<String, dynamic>? eventParams}) async {
    return _analytics.logEvent(name: eventName, parameters: eventParams);
  }
}
