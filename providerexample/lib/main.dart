import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/UI/providers/counter_provider.dart';
import '/UI/view/home_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider<CounterProvider>(create: (_) => CounterProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
    );
  }
}
