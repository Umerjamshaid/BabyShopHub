import 'package:flutter/material.dart';

class AppNavigater {
  static void pushReplacement(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
  static void push(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
  static void pop(BuildContext context) {
    Navigator.pop(context );
  }
}
