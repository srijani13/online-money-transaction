// ignore_for_file: must_be_immutable

part of 'enter_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EnterCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EnterCodeEvent extends Equatable {}

/// Event that is dispatched when the EnterCode widget is first created.
class EnterCodeInitialEvent extends EnterCodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends EnterCodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
