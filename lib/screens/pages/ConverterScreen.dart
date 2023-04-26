import 'package:bin2dec/widgets/ButtonsRow.dart';
import 'package:bin2dec/widgets/DigitsRow.dart';
import 'package:flutter/material.dart';

import '../../widgets/components/DisplayValue.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({Key? key}) : super(key: key);

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click in the number box to switch between 0 and 1"),
            DigitsRow(),
            ButtonsRow(),
            DisplayValue(),
          ],
        ),
      ),
    );
  }
}
