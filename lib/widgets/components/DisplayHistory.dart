import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/BinaryListProvider.dart';

class DisplayHistory extends StatefulWidget {
  const DisplayHistory({Key? key}) : super(key: key);

  @override
  State<DisplayHistory> createState() => _DisplayHistoryState();
}

class _DisplayHistoryState extends State<DisplayHistory> {
  @override
  Widget build(BuildContext context) {
    //Provider viewPoint
    var binaryState = context.watch<BinaryListProvider>();
    Map convertHistory = binaryState.convertHistory;

    return convertHistory.isEmpty
        ? const Text("No history yet")
        : Expanded(
            child: ListView.builder(
              itemCount: convertHistory.length,
              itemBuilder: (BuildContext context, int index) {
                String key = convertHistory.keys.elementAt(index);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: Text(key),
                      subtitle: Text("${convertHistory[key]}"),
                    ),
                    const Divider(
                      height: 2.0,
                    ),
                  ],
                );
              },
            ),
          );
  }
}
