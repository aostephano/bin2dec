import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/bin2dec_provider.dart';
import 'screens/firstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => Bin2DecProvider()),
      child: MaterialApp(
        title: 'Bin2Dec',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: FirstScreen(),
      ),
    );
  }
}
