import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:autono2/bloc/calculator/calculator_bloc.dart';
import 'bloc/screens/calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) =>
            CalculatorBloc(), // Provide your CalculatorBloc instance here
        child: const CalculatorScreen(),
      ),
    );
  }
}
