import 'package:flutter/material.dart';
import 'package:login_ui/login.dart';
import 'package:login_ui/tabs.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/navigator.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
