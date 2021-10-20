import 'dart:async';

import 'package:flutter/material.dart';
class DemoStreamPage extends StatefulWidget {

  @override
  _DemoStreamPageState createState() => _DemoStreamPageState();
}

class _DemoStreamPageState extends State<DemoStreamPage> {

  @override
  void didUpdateWidget(covariant DemoStreamPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    // var result = Future.delayed(Duration(seconds: 2) , () => 2);
    // Stream<int> stream = Stream.fromFuture(result);
    //
    // stream.listen((data) {
    //   print(data);
    // });

    // Iterable<int> iterable = Iterable.generate(10 , (index) => index + 1);
    //
    // Stream<int> streamIterable = Stream.fromIterable(iterable);
    //
    // streamIterable.listen((event) {
    //   print(event);
    // });
    
    Stream<int> stream = Stream.periodic(Duration(seconds: 1) , (value){
      return value;
    }).asBroadcastStream();

    stream.take(10).listen((event) {
      print(event);
    });
    stream.take(10).listen((event) {
      print(event);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Stream"),
      ),
      body: Container(

      ),
    );
  }
}
