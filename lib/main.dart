import 'package:sisapp/src/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SIS  APP',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen());
  }
}
