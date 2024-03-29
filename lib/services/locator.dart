import 'package:get_it/get_it.dart';

import '../bloc/main_bloc/main_bloc.dart';


GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerSingleton(MainBloc());
}