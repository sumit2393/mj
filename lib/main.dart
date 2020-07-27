import 'package:flutter/material.dart';
import 'package:flutter_app_mbj/Screen/Sign.dart';
import "Screen/Home.dart";
import 'Screen/initialScreen.dart';
import 'Screen/login.dart';
import 'Screen/landing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Color(0xFF670e1e),
            unselectedWidgetColor: Color(0xFF670e1e),
            buttonTheme: ButtonThemeData(
                buttonColor: Color(0xFF670e1e),
                textTheme: ButtonTextTheme.primary)),
        home: Initial());
  }
}
