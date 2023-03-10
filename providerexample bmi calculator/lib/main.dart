import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/UI/view/screens/home_screen.dart';
import '/UI/providers/counter_provider.dart';

void main() {
  // runApp(MultiProvider(
  //   providers: [
  //     ListenableProvider<CounterProvider>(create: (_) => CounterProvider()),
  //   ],
  //   child: const MyApp(),
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const BmiCalc(),
    );
  }
}
