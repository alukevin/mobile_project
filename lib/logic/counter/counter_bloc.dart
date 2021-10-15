import '/logic/counter/counter_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()); // inicializa o estado inicial com zero

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    // "mapEventToState" mapeia evento em estados
    switch (event) {
      case CounterEvent.increment:
        yield CounterState(
            counterValue: state.counterValue + 1); // gera um novo estado
        break;
      case CounterEvent.decrement:
        yield CounterState(
            counterValue: state.counterValue - 1); // gera um novo estado
        break;
    }

    throw UnimplementedError();
  }
}
