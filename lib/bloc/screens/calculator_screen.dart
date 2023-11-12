import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:autono2/bloc/calculator/calculator_bloc.dart';

import 'package:autono2/widgets/results_labels.dart';
import 'package:autono2/widgets/calc_button.dart';


class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            const ResultsLabels(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: 'AC',
                  bgColor: const Color(0xffA5A5A5),
                  onPressed: () => calculatorBloc.add(ResetAC()),
                ),
                CalculatorButton(
                  text: '+/-',
                  bgColor: const Color(0xffA5A5A5),
                  // ignore: avoid_print
                  onPressed: () => print('+/-'),
                ),
                CalculatorButton(
                  text: 'del',
                  bgColor: const Color(0xffA5A5A5),
                  // ignore: avoid_print
                  onPressed: () => print('del'),
                ),
                CalculatorButton(
                  text: '/',
                  bgColor: const Color(0xffF0A23B),
                  // ignore: avoid_print
                  onPressed: () => print('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '7',
                  onPressed: () => calculatorBloc.add(AddNumber('7')),
                ),
                CalculatorButton(
                  text: '8',
                  onPressed: () => calculatorBloc.add(AddNumber('8')),
                ),
                CalculatorButton(
                  text: '9',
                  onPressed: () => calculatorBloc.add(AddNumber('9')),
                ),
                CalculatorButton(
                  text: 'X',
                  bgColor: const Color(0xffF0A23B),
                  // ignore: avoid_print
                  onPressed: () => print('X'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '4',
                  // ignore: avoid_print
                  onPressed: () => print('4'),
                ),
                CalculatorButton(
                  text: '5',
                  // ignore: avoid_print
                  onPressed: () => print('5'),
                ),
                CalculatorButton(
                  text: '6',
                  // ignore: avoid_print
                  onPressed: () => print('6'),
                ),
                CalculatorButton(
                  text: '-',
                  bgColor: const Color(0xffF0A23B),
                  // ignore: avoid_print
                  onPressed: () => print('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '1',
                  // ignore: avoid_print
                  onPressed: () => print('1'),
                ),
                CalculatorButton(
                  text: '2',
                  // ignore: avoid_print
                  onPressed: () => print('2'),
                ),
                CalculatorButton(
                  text: '3',
                  // ignore: avoid_print
                  onPressed: () => print('3'),
                ),
                CalculatorButton(
                  text: '+',
                  bgColor: const Color(0xffF0A23B),
                  // ignore: avoid_print
                  onPressed: () => print('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '0',
                  big: true,
                  // ignore: avoid_print
                  onPressed: () => print('0'),
                ),
                CalculatorButton(
                  text: '.',
                  // ignore: avoid_print
                  onPressed: () => print('.'),
                ),
                CalculatorButton(
                  text: '=',
                  bgColor: const Color(0xffF0A23B),
                  // ignore: avoid_print
                  onPressed: () => print('='),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
