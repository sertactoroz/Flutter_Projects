import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/UI/providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var counterProvider = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //for Android to center title
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Expanded(
              child: Center(
                child: Consumer<CounterProvider>(
                    builder: (context, counterProvider, _) => Text(
                          counterProvider.getCounter.toString(),
                          style: TextStyle(
                              fontSize: 222,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal),
                        )),
              ),
            ),
            SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                onPressed: () =>
                    Provider.of<CounterProvider>(context, listen: false)
                        .incrementCounter(),
                child: const Text('Increment'),
              ),
            ),
            Divider(),
            SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                onPressed: () =>
                    Provider.of<CounterProvider>(context, listen: false)
                        .decrementCounter(),
                child: const Text('Decrement'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
