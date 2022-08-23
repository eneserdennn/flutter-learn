import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  CounterHelloButton({Key? key}) : super(key: key);

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;
  final String _hello = 'Hello';

  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      child: Text('$_hello $_counterCustom'),
    );
  }
}
