part of 'calculator_bloc.dart';

class CalculatorState {
  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String operation;

  CalculatorState({
    this.mathResult = '25',
    this.firstNumber = '5',
    this.secondNumber = '5',
    this.operation = 'x',
  });

  CalculatorState reset() {
    return CalculatorState();
  }

  CalculatorState copyWith({
    String? mathResult,
    String? firstNumber,
    String? secondNumber,
    String? operation,
  }) {
    return CalculatorState(
      mathResult: mathResult ?? this.mathResult,
      firstNumber: firstNumber ?? this.firstNumber,
      secondNumber: secondNumber ?? this.secondNumber,
      operation: operation ?? this.operation,
    );
  }
}

