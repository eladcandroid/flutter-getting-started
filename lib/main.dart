import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Counter extends StatefulWidget {
  Counter({Key key}) : super(key: key);

  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Text('counter: $counter'),
      ),
      RaisedButton(onPressed: _incrementCounter)
    ]);
  }

  void _incrementCounter() {
    setState(() {
      this.counter++;
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
        children: <Widget>[
          Text("Hello World!"),
          Counter()
        ],
      ),
    ));
  }
}
