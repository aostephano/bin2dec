import 'package:bin2dec/widgets/components/SquareInput.dart';
import 'package:flutter/material.dart';

class DigitsRow extends StatefulWidget {
  const DigitsRow({Key? key}) : super(key: key);

  @override
  State<DigitsRow> createState() => _DigitsRowState();
}

class _DigitsRowState extends State<DigitsRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SquareInput(idx: 0),
          SquareInput(idx: 1),
          SquareInput(idx: 2),
          SquareInput(idx: 3),
          SquareInput(idx: 4),
          SquareInput(idx: 5),
          SquareInput(idx: 6),
          SquareInput(idx: 7),
        ],
      ),
    );
  }
}
