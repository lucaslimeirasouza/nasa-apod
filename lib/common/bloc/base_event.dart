import 'package:equatable/equatable.dart';
import '../../utils/normalize_analytics.dart';

abstract class BaseEvent extends Equatable {
  const BaseEvent();

  String? get event => NormalizeAnalytics.action(runtimeType.toString());
}
