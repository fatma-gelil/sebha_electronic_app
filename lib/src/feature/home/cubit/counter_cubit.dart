import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/src/feature/home/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void add() {
    emit(CounterUpdate(state.count + 1, state.color,state.title));
  }

  void reset() {
    emit(CounterUpdate(0, state.color,state.title));
  }

  void changeBackgroundColor(Color newColor) {
    emit(BackgroundColor(state.count, newColor,state.title));
  }
  void changeTitle(String newTitle) {
    emit(CounterTitleUpdate(newTitle, state.count, state.color));
  }
}
