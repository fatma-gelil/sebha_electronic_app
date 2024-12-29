import 'package:flutter/material.dart';

abstract class CounterState {
  final int count;
  final Color color;
  final String title;

  const CounterState(this.count, this.color,this.title);
}

class CounterInitial extends CounterState {
  CounterInitial() : super(0, Colors.pink[200]!,'سبحان الله'); 
}

class CounterUpdate extends CounterState {
  CounterUpdate(super.count, super.color,super.title);
}

class BackgroundColor extends CounterState {
  BackgroundColor(super.count, super.color,super.title);
}
class CounterTitleUpdate extends CounterState {
  @override
  // ignore: overridden_fields
  final String title;

  CounterTitleUpdate(this.title, int count, Color color) : super(count, color,title);
}