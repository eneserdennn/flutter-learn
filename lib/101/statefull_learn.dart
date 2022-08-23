import 'package:flutter/material.dart';
import 'package:flutter_learn/product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _increment(),
          _deincrement(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          )),
          const Placeholder(),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _increment() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrement() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
