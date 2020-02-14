import 'package:flutter/services.dart';
import 'package:multiple_method_channel_module/router_bloc/bloc.dart';

class NativeBridge {
  static NativeBridge get instance => NativeBridge();

  RouterBloc router;
  MethodChannel platform;

  NativeBridge() : router = RouterBloc(), platform = MethodChannel('native-bridge') {
    platform.setMethodCallHandler((handler) async {
      switch(handler.method) {
        case 'launchScreenA':
          router.add(LaunchScreenAEvent());
          break;
        case 'launchScreenB':
          router.add(LaunchScreenBEvent());
          break;
        default:
          print('Not Handled');
      }
    });
  }
}