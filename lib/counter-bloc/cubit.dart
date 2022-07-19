import 'package:flutter_bloc/flutter_bloc.dart';

class CounterState {
  int counter;

  CounterState(this.counter);
}

class CounterBloc extends Cubit<CounterState> {
  CounterBloc(super.initialState);

  void increment() {
    emit(CounterState(state.counter + 1));
  }

  void decrement() {
    emit(CounterState(state.counter - 1));
  }

  void reset() {
    emit(CounterState(0));
  }
}
