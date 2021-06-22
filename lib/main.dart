import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xcrino_machine_test/screens/open_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xcrino machineTest',
      debugShowCheckedModeBanner: false,
      home: OpenScreen(),
    );
  }
}
