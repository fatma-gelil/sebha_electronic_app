import 'package:flutter/material.dart';

abstract class CounterState {
  const CounterState();
}

class CounterInitial extends CounterState {
  CounterInitial();
}

class CounterUpdate extends CounterState {
  CounterUpdate();
}

class BackgroundColor extends CounterState {
  final Color color;
  BackgroundColor(this.color);
}

class CounterTitleUpdate extends CounterState {
  

  CounterTitleUpdate();
}
