import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/BinaryListProvider.dart';

class DisplayValue extends StatefulWidget {
  const DisplayValue({Key? key}) : super(key: key);

  @override
  State<DisplayValue> createState() => _DisplayValueState();
}

class _DisplayValueState extends State<DisplayValue> {
  @override
  Widget build(BuildContext context) {
    //Provider viewPoint
    var binaryState = context.watch<BinaryListProvider>();
    List<bool> binaryList = binaryState.binaryList;
    num decimalValue = binaryState.convertBinaryToDecimal(binaryList);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Decimal Value: "),
        Text("$decimalValue"),
      ],
    );
  }
}
