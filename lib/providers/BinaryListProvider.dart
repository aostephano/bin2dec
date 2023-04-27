import 'dart:math';

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

  void changeBinValue(int idx) {
    binaryList[idx] ? binaryList[idx] = false : binaryList[idx] = true;
    // debugPrint(binaryList.toString());
    notifyListeners();
  }

  num convertBinaryToDecimal(List<bool> boolList) {
    num decimalValue = 0;

    boolList.asMap().forEach((index, value) {
      num binValue = value ? 1 : 0;
      num secondPar = pow(2, index);
      decimalValue += binValue * secondPar;
    });

    notifyListeners();
    return decimalValue;
  }
}
