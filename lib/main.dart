import 'package:flutter/material.dart';
import 'package:structure_demo/intro.dart';

void main() => runApp(StructureDemo());

class StructureDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Structure demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Intro(),
    );
  }
}
