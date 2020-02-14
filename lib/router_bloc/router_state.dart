import 'package:equatable/equatable.dart';

abstract class RouterState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialRouterState extends RouterState {
}

class ScreenAState extends RouterState {}

class ScreenBState extends RouterState {}
