import 'package:flutter/material.dart';

import '../consts.dart';
import './screens/main_screen.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: unselectedColor,
        scaffoldBackgroundColor: selectedColor,
      ),
      home: MainScreen(),
    );
  }
}
