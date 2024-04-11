import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/login.dart';
import 'package:flutter_ui/screens/sign.dart';
import 'package:flutter_ui/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelCome(),
      debugShowCheckedModeBanner: false,
    );
  }
}