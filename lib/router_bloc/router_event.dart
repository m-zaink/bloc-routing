import 'package:equatable/equatable.dart';

abstract class RouterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LaunchScreenAEvent extends RouterEvent {}

class LaunchScreenBEvent extends RouterEvent {}

