import 'package:flutter/material.dart';

class BinaryListProvider extends ChangeNotifier {
//  This is where we manage the state of the application
  List<bool> binaryList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  void changeBinValueUI() {
    notifyListeners();
  }
}
