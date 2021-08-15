import 'package:day3training/screens/LoginScreen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
class PageTwo extends StatefulWidget{
  int n;
  PageTwo({this.n=0});

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int n;
  _PageTwoState({this.n=0});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // leading,
        title: Text('Page Two',style:TextStyle()),
        //actions[]
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Counter value is',style:TextStyle(color: Colors.blue,)),
          Text('${widget.n}',style:TextStyle(color: Colors.blue,fontSize: 50,fontWeight: FontWeight.bold)),
        ],
      )),


    );
  }
}