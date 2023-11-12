import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState());

  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    if (event is AddNumber) {
      yield state.copyWith(
        mathResult: (state.mathResult == '0')
            ? event.number
            : state.mathResult + event.number,
      );
    } else if (event is ResetAC) {
      yield state.reset();
    }
    // Agrega más lógica para otros eventos según sea necesario
  }
}
