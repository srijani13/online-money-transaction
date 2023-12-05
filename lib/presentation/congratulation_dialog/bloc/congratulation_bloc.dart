import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:srijani_s_application1/presentation/congratulation_dialog/models/congratulation_model.dart';
part 'congratulation_event.dart';
part 'congratulation_state.dart';

/// A bloc that manages the state of a Congratulation according to the event that is dispatched to it.
class CongratulationBloc
    extends Bloc<CongratulationEvent, CongratulationState> {
  CongratulationBloc(CongratulationState initialState) : super(initialState) {
    on<CongratulationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CongratulationInitialEvent event,
    Emitter<CongratulationState> emit,
  ) async {}
}
