import 'package:flutter/material.dart';

import '../../common/bloc/base_state.dart';

class NasaState extends BaseState {
  NasaState({
    String message = '',
    bool isValid = false,
    bool isFailure = false,
    bool isSuccess = false,
    bool isLoading = false,
    bool isComplete = false,
    bool isInitial = false,
  }) : super(
            message: message,
            isValid: isValid,
            isFailure: isFailure,
            isSuccess: isSuccess,
            isComplete: isComplete,
            isLoading: isLoading,
            isInitial: isInitial);

  factory NasaState.initial() {
    return NasaState(isInitial: true);
  }
  factory NasaState.loading() {
    return NasaState(isLoading: true);
  }
  factory NasaState.valid({String? message, @required bool? isValid}) {
    return NasaState(message: message!, isValid: isValid!);
  }
  factory NasaState.failure({@required String? message, bool? isValid}) {
    return NasaState(message: message!, isFailure: true, isValid: isValid!);
  }
  factory NasaState.success({@required String? message}) {
    return NasaState(message: message!, isSuccess: true);
  }
  factory NasaState.complete() {
    return NasaState(isComplete: true);
  }
}
