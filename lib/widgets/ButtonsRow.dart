import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/BinaryListProvider.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              //Provider viewPoint
              var binaryState = context.watch<BinaryListProvider>();
              List<bool> binaryList = binaryState.binaryList;
              binaryState.convertBinaryToDecimal(binaryList);
            },
            child: Text("Convert"),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Reset"),
          ),
        ],
      ),
    );
  }
}
