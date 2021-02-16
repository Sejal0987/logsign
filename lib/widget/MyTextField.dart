import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final decoration;
  final keyboard;
  final bool text;
  MyTextField({this.decoration, this.keyboard, this.text});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: text,
      keyboardType: keyboard,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white),
      onChanged: (value) {},
      decoration: decoration,
    );
  }
}
