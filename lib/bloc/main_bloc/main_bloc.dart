import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<MainEvent>(mainEvent);
  }

  FutureOr<void> mainEvent(MainEvent event, Emitter<MainState> emit) {
    emit(MainInitial());
  }
}
