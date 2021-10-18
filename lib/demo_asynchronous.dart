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

  void xuly(){
    int a = 0;
    listenerData(a, (data){
      print(data);
    });
  }


  void listenerData(int a , Function function){
    a = 10;
    Future.delayed(Duration(seconds: 2) , (){
      a += 2;
      function(a);
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
