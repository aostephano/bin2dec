import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/BinaryListProvider.dart';

class GetDigitsRow extends StatefulWidget {
  const GetDigitsRow({Key? key}) : super(key: key);

  @override
  State<GetDigitsRow> createState() => _GetDigitsRowState();
}

class _GetDigitsRowState extends State<GetDigitsRow> {
  @override
  Widget build(BuildContext context) {
    var binaryState = context.watch<BinaryListProvider>();
    List binaryList = binaryState.binaryList;
    List<Widget> list = <Widget>[];

    for (var i = 0; i < binaryList.length; i++) {
      list.add(Text(binaryList[i].toString()));
    }

    return Row(
      children: [for (var element in list) element],
    );
  }
}
