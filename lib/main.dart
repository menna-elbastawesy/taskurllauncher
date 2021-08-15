import 'package:day3training/screens/LoginScreen.dart';
import 'package:day3training/screens/UserScreen.dart';
import 'package:day3training/screens/postScreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  UserScreen () ,
    );
  }

}
