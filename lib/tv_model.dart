import 'dart:developer';

import 'package:flutter/material.dart';

class TVModel extends ChangeNotifier {
  int counter = 0;
  void increment(){
    this.counter++;
    print('${this.counter}');
    notifyListeners();
  }
}