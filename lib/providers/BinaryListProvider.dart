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

  Map convertHistory = {};

  void changeBinValue(int idx) {
    binaryList[idx] ? binaryList[idx] = false : binaryList[idx] = true;
    // debugPrint(binaryList.toString());
    notifyListeners();
  }

  num convertBinaryToDecimal(List<bool> boolList) {
    num decimalValue = 0;
    List<bool> revBoolList = boolList.reversed.toList();

    revBoolList.asMap().forEach(
      (index, value) {
        num binValue = value ? 1 : 0;
        num secondPar = pow(2, index);
        decimalValue += binValue * secondPar;
        debugPrint("---------------");
      },
    );

    notifyListeners();
    return decimalValue;
  }

  void saveConvertOnHistory(List<bool> binList, num decimalValue) {
    String binValue = '';
    for (var bin in binList) {
      num auxValue = bin ? 1 : 0;
      binValue += auxValue.toString();
    }
    convertHistory[binValue] = decimalValue.toString();

    debugPrint(convertHistory.toString());
  }
}
