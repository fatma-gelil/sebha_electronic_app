import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial(0)); // Initialize with 0

  void add() {
    emit(CounterUpdate(state.count + 1)); // Emit updated state
  }

  void reset() {
    emit(CounterInitial(0)); // Reset to initial state
  }
}