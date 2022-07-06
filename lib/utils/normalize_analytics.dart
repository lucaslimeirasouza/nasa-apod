// ignore: avoid_classes_with_only_static_members
class NormalizeAnalytics {
  static String action(String name) {
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
    return name.replaceAllMapped(exp, (Match m) => ('_' + m.group(0)!)).toLowerCase().replaceAll('_event', '');
  }

  static String router(String name) {
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
    return name.replaceAllMapped(exp, (Match m) => ('_' + m.group(0)!)).toLowerCase().replaceAll('_state', '').replaceAll('_', '/');
  }
}
