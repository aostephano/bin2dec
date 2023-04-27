import 'package:bin2dec/providers/BinaryListProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SquareInput extends StatefulWidget {
  final int idx;
  const SquareInput({Key? key, required this.idx}) : super(key: key);

  @override
  State<SquareInput> createState() => _SquareInputState();
}

class _SquareInputState extends State<SquareInput> {
  bool _boolValueController = false;

  @override
  Widget build(BuildContext context) {
    //Provider viewPoint
    var binaryState = context.watch<BinaryListProvider>();
    _boolValueController = binaryState.binaryList[widget.idx];

    return Expanded(
      flex: 1,
      child: OutlinedButton(
        onPressed: () {
          _boolValueController = binaryState.binaryList[widget.idx];
          _boolValueController
              ? _boolValueController = false
              : _boolValueController = true;
          binaryState.changeBinValue(widget.idx);
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(_boolValueController ? '1' : '0'),
        // child: Text(_boolValue.toString()),
      ),
    );
  }
}
