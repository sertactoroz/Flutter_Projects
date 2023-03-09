import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = '';
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalküleytır'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Flexible(flex: 1, child: resultWidget()),
          Flexible(flex: 2, child: buttonWidget()),
        ],
      ),
    );
  }
}

Widget resultWidget() {
  return Column(
    children: [],
  );
}

Widget buttonWidget() {
  return Container(color: Colors.amberAccent);
}
