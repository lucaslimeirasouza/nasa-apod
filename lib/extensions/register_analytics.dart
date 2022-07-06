// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:flutter/foundation.dart';
// import 'package:core/src/common/bloc/base_event.dart';
// import 'package:core/src/common/bloc/base_state.dart';
// import '../settings.dart';

// extension RegisterAnalyticsAction on BaseEvent {
//   void register({Map<String, dynamic>? parameters}) {
//     if (this.event == null || !Settings.instance.enabledAnalytics) return;
//     debugPrint('RegisterAnalyticsAction - ${this.event}');
//     try {
//       FirebaseAnalytics.instance.logEvent(name: this.event!, parameters: parameters);
//     } catch (_) {}
//   }
// }

// extension RegisterAnalyticsRoute on BaseState {
//   void registerAnalyticsRoute({bool force = false, String? route}) {
//     if ((this.isInitial == true || force) && Settings.instance.enabledAnalytics) {
//       // ignore: unnecessary_null_comparison
//       if (this.route == null && route == null) return;

//       // ignore: unnecessary_null_comparison
//       if (route == null && this.route != null) {
//         route = this.route;
//       }
//       debugPrint('RegisterAnalyticsRoute - ${route}');
//       try {
//         FirebaseAnalytics.instance.setCurrentScreen(screenName: this.route);
//       } catch (_) {}
//     }
//   }
// }
