import 'package:flutter/material.dart';

class SquareInput extends StatefulWidget {
  const SquareInput({Key? key}) : super(key: key);

  @override
  State<SquareInput> createState() => _SquareInputState();
}

class _SquareInputState extends State<SquareInput> {
  String binValue = '';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(''),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
