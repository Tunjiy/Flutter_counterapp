import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //varialble
  int _counter = 0;
  //method
  void _incrementCounter() {
    //sestate rebuild widget
    setState(() {
      _counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You pushed the button several times'),

            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 45),
            ),
            //button
            ElevatedButton(
                onPressed: _incrementCounter, child: Text('Increament!!'))
          ],
        ),
      ),
    );
  }
}
