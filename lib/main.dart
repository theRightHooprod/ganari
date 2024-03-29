import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ganari/bloc/main_bloc/main_bloc.dart';
import 'package:ganari/services/locator.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MaterialApp(
    home: Scaffold(
      body: MainApp(),
    ),
  ));
}

/* 
    MainMenu -> show cows
    Settings -> xd
    About -> xd
*/

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    MainBloc mainBloc = getIt<MainBloc>();

    return BlocConsumer(
      bloc: mainBloc,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {
          case const (MainInitial):
            return const Center(child: Text('App ganadera Principal'));
          default:
            return const Center(child: Text('App ganadera'));
        }
      },
    );
  }
}