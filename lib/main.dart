import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Counter extends StatefulWidget {
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text('counter: $counter'),
      RaisedButton(onPressed: _incrementCounter, child: Text('check'))
    ]));
  }

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("Hello World!"), Counter()],
      ),
    ));
  }
}
