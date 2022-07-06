import 'package:flutter/material.dart';

import '../nasa_state.dart';

class HomePageState extends NasaState {
  HomePageState({
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

  factory HomePageState.initial() {
    return HomePageState(isInitial: true);
  }
  factory HomePageState.loading() {
    return HomePageState(isLoading: true);
  }
  factory HomePageState.valid({String? message, @required bool? isValid}) {
    return HomePageState(message: message!, isValid: isValid!);
  }
  factory HomePageState.failure({@required String? message, bool? isValid}) {
    return HomePageState(message: message!, isFailure: true, isValid: isValid!);
  }
  factory HomePageState.success({@required String? message}) {
    return HomePageState(message: message!, isSuccess: true);
  }
  factory HomePageState.complete() {
    return HomePageState(isComplete: true);
  }
}
