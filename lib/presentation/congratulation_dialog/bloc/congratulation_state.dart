// ignore_for_file: must_be_immutable

part of 'congratulation_bloc.dart';

/// Represents the state of Congratulation in the application.
class CongratulationState extends Equatable {
  CongratulationState({this.congratulationModelObj});

  CongratulationModel? congratulationModelObj;

  @override
  List<Object?> get props => [
        congratulationModelObj,
      ];
  CongratulationState copyWith({CongratulationModel? congratulationModelObj}) {
    return CongratulationState(
      congratulationModelObj:
          congratulationModelObj ?? this.congratulationModelObj,
    );
  }
}
