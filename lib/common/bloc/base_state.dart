class BaseState {
  String? message;
  bool? isInitial;
  bool? isLoading;
  bool? isValid;
  bool? isFailure;
  bool? isSuccess;
  bool? isComplete;

  BaseState(
      {this.message,
      this.isInitial,
      this.isLoading,
      this.isValid,
      this.isFailure,
      this.isSuccess,
      this.isComplete}) {}

  factory BaseState.initial() {
    return BaseState(isInitial: true);
  }
  factory BaseState.loading() {
    return BaseState(isLoading: true);
  }
  factory BaseState.complete() {
    return BaseState(isComplete: true);
  }
  factory BaseState.valid({String? message, required bool isValid}) {
    return BaseState(message: message, isValid: isValid);
  }
  factory BaseState.failure({required String message, bool? isValid}) {
    return BaseState(message: message, isFailure: true, isValid: isValid);
  }
  factory BaseState.success({required String message}) {
    return BaseState(message: message, isSuccess: true);
  }
}
