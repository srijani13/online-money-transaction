import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:srijani_s_application1/presentation/reset_password_screen/models/reset_password_model.dart';
part 'reset_password_event.dart';
part 'reset_password_state.dart';

/// A bloc that manages the state of a ResetPassword according to the event that is dispatched to it.
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(ResetPasswordState initialState) : super(initialState) {
    on<ResetPasswordInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    ResetPasswordInitialEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(state.copyWith(
      group35Controller: TextEditingController(),
      group34Controller: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
