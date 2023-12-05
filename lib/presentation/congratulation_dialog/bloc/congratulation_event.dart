// ignore_for_file: must_be_immutable

part of 'congratulation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Congratulation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CongratulationEvent extends Equatable {}

/// Event that is dispatched when the Congratulation widget is first created.
class CongratulationInitialEvent extends CongratulationEvent {
  @override
  List<Object?> get props => [];
}
