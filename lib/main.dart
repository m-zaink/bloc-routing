import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_method_channel_module/NativeBridge.dart';
import 'package:multiple_method_channel_module/router_bloc/bloc.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<RouterBloc, RouterState>(
        bloc: NativeBridge.instance.router,
        builder: (context, state) {
          switch (state.runtimeType) {
            case ScreenAState:
              return ScreenA();
            case ScreenBState:
              return ScreenB();
            default:
              return Scaffold(
                appBar: AppBar(
                  title: Text('Main App'),
                ),
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
          }
        },
      ),
    );
  }
}

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SCREEN A'),
      ),
      body: Center(
        child: Text('SCREEN A'),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SCREEN B'),
      ),
      body: Center(
        child: Text('SCREEN B'),
      ),
    );
  }
}
