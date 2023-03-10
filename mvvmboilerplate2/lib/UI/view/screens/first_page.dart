import 'package:flutter/material.dart';
import 'package:mvvmboilerplate/UI/view/screens/second_page.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Navigate to the second screen when tapped.
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, SecondScreen.routeName);
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}
