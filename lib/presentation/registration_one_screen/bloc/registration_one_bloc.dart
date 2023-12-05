import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:srijani_s_application1/presentation/registration_one_screen/models/registration_one_model.dart';
part 'registration_one_event.dart';
part 'registration_one_state.dart';

/// A bloc that manages the state of a RegistrationOne according to the event that is dispatched to it.
class RegistrationOneBloc
    extends Bloc<RegistrationOneEvent, RegistrationOneState> {
  RegistrationOneBloc(RegistrationOneState initialState) : super(initialState) {
    on<RegistrationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistrationOneInitialEvent event,
    Emitter<RegistrationOneState> emit,
  ) async {}
}
