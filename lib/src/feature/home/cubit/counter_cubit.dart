import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int x = 0;
  void add() {
    x++;
  }

  void reset() {
    x =0;
  }

  @override
  emit(CounterUpdate);
}
