part of 'counter_cubit.dart';

abstract class CounterState {
  final int count;
  const CounterState(this.count);
}

class CounterInitial extends CounterState {
  CounterInitial(super.count);
}

class CounterUpdate extends CounterState {
  CounterUpdate(super.count);
}