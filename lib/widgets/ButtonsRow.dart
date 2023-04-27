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
              var binaryState =
                  Provider.of<BinaryListProvider>(context, listen: false);
              List<bool> binaryList = binaryState.binaryList;
              num decimalValue = binaryState.convertBinaryToDecimal(binaryList);
              binaryState.saveConvertOnHistory(binaryList, decimalValue);
            },
            child: Text("Add to history"),
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
