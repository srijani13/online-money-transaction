import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:srijani_s_application1/presentation/registration_screen/models/registration_model.dart';
part 'registration_event.dart';
part 'registration_state.dart';

/// A bloc that manages the state of a Registration according to the event that is dispatched to it.
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(RegistrationState initialState) : super(initialState) {
    on<RegistrationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistrationInitialEvent event,
    Emitter<RegistrationState> emit,
  ) async {}
}
