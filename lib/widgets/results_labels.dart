import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:autono2/bloc/calculator/calculator_bloc.dart';

import 'line_separator.dart';
import 'main_result.dart';
import 'sub_result.dart';

class ResultsLabels extends StatelessWidget {
  const ResultsLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstNumber),
            SubResult(text: state.operation),
            SubResult(text: state.secondNumber),
            const LineSeparator(),
            MainResultText(text: state.mathResult),
          ],
        );
      },
    );
  }
}
