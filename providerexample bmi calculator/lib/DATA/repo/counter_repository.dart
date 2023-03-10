import 'package:flutter/material.dart';

class CounterRepository with ChangeNotifier {
  int incrementCounter(int count) {
    return ++count;
  }

  int decrementCounter(int count) {
    return --count;
  }
}
