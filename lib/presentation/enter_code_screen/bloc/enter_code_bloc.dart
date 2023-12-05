import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:srijani_s_application1/presentation/enter_code_screen/models/enter_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'enter_code_event.dart';
part 'enter_code_state.dart';

/// A bloc that manages the state of a EnterCode according to the event that is dispatched to it.
class EnterCodeBloc extends Bloc<EnterCodeEvent, EnterCodeState>
    with CodeAutoFill {
  EnterCodeBloc(EnterCodeState initialState) : super(initialState) {
    on<EnterCodeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<EnterCodeState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    EnterCodeInitialEvent event,
    Emitter<EnterCodeState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
