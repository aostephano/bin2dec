import 'package:bin2dec/widgets/components/SquareInput.dart';
import 'package:bin2dec/widgets/components/getDigitsRow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/BinaryListProvider.dart';

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
          GetDigitsRow(),
        ],
      ),
    );
  }
}
