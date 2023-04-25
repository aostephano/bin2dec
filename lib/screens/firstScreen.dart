import 'package:flutter/material.dart';

import '../widgets/squareInput.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ElevatedButton(onPressed: () {}, child: Text("Botão"))],
      ),
    );
  }
}
