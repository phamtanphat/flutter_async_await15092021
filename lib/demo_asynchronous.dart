import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
class DemoAsynchronous extends StatefulWidget {

  @override
  _DemoAsynchronousState createState() => _DemoAsynchronousState();
}

class _DemoAsynchronousState extends State<DemoAsynchronous> {

  @override
  void didUpdateWidget(covariant DemoAsynchronous oldWidget) {
    super.didUpdateWidget(oldWidget);
    xuly();
  }

  void xuly() {
    int a = 0;
    int b = 5;

    // // 5 phut
    // a + b : sau 2 giay co ket qua
    // ketqua + 5 : sau 2 giay co ket qua
    var data = Future.delayed(Duration(seconds: 2),(){
      Completer completer = new Completer();
      var number = Random().nextInt(10);
      if (number % 2 == 0){
        completer.complete("Success");
      }else{
        completer.completeError("Fail");
      }
      return completer.future;
    });
    data.then((value){
      print(value);
    }).catchError((onError){
      print("Loi" + onError.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo asynchronous"),
      ),
    );
  }
}
