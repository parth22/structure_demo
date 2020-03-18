import 'package:flutter/material.dart';

class SingleLineTextfield extends StatelessWidget {
  SingleLineTextfield({this.controllerText, this.hintText});
  final dynamic controllerText;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400]),
        border: OutlineInputBorder(),
      ),
    );
  }
}
