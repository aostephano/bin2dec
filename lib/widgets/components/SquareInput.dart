import 'package:bin2dec/providers/BinaryListProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SquareInput extends StatefulWidget {
  const SquareInput({Key? key}) : super(key: key);

  @override
  State<SquareInput> createState() => _SquareInputState();
}

class _SquareInputState extends State<SquareInput> {
  bool _boolAuxValue = false;

  @override
  Widget build(BuildContext context) {
    //Provider viewPoint
    var binaryState = context.watch<BinaryListProvider>();
    return Expanded(
      flex: 1,
      child: OutlinedButton(
        onPressed: () {
          _boolAuxValue ? _boolAuxValue = false : _boolAuxValue = true;
          binaryState.changeBinValueUI();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(_boolAuxValue ? '1' : '0'),
        // child: Text(_boolValue.toString()),
      ),
    );
  }
}
