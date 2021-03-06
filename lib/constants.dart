import 'package:flutter/material.dart';

const kInputField = InputDecoration(
  filled: true,
  fillColor: Colors.black26,
  hintStyle: TextStyle(color: Colors.black87),
  labelStyle: TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black54, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
