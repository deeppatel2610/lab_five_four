import 'package:flutter/material.dart';
import 'package:lab_five_four/Calc.dart';
import 'package:lab_five_four/Chess.dart';
import 'package:lab_five_four/DaynamicList.dart';
import 'package:lab_five_four/IconsData.dart';
import 'package:lab_five_four/Map.dart';
import 'Icons_Editor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IconsEditor(),
    );
  }
}
