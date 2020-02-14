import 'dart:async';
import 'package:bloc/bloc.dart';
import 'bloc.dart';

class RouterBloc extends Bloc<RouterEvent, RouterState> {
  @override
  RouterState get initialState => InitialRouterState();

  @override
  Stream<RouterState> mapEventToState(
    RouterEvent event,
  ) async* {
    switch(event.runtimeType) {
      case LaunchScreenAEvent:
        yield ScreenAState();
        break;
      case LaunchScreenBEvent:
        yield ScreenBState();
        break;
      default:
        yield InitialRouterState();
    }
  }
}
