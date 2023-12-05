// ignore_for_file: must_be_immutable

part of 'registration_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegistrationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegistrationOneEvent extends Equatable {}

/// Event that is dispatched when the RegistrationOne widget is first created.
class RegistrationOneInitialEvent extends RegistrationOneEvent {
  @override
  List<Object?> get props => [];
}
