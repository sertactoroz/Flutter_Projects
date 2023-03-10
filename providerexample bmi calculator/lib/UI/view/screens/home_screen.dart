import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BmiCalc extends StatelessWidget {
  const BmiCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Weight Calculator'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [Row()],
          ),
        ),
      ),
    );
  }
}
