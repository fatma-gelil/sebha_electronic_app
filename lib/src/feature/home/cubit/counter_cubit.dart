import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/src/feature/home/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  double count = 0;
  Color color = Colors.pink[200]!;
  String title = 'سبحان الله';
  void add() {
    count++;
    emit(CounterUpdate());
  }

  void reset() {
    count = 0;
    emit(CounterUpdate());
  }

  void colorbrown() {
    color = Colors.brown;
    emit(CounterTitleUpdate());
  }

  void colorpink() {
    color = Colors.pink[200]!;
    emit(CounterTitleUpdate());
  }

  void colorblue() {
    color = Colors.blue[200]!;
    emit(CounterTitleUpdate());
  }

  void title1() {
    title = 'سبحان الله';
    emit(CounterTitleUpdate());
  }

  void title2() {
    title = 'الحمد لله';
    emit(CounterTitleUpdate());
  }

  void title3() {
    title = 'لا اله الا الله';
    emit(CounterTitleUpdate());
  }
}
