import 'package:bin2dec/providers/MemoryProvider.dart';
import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'package:provider/provider.dart';
import '../providers/BinaryListProvider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BinaryListProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MemoryProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bin2Dec App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
