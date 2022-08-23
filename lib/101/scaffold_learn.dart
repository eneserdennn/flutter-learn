import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Samples'),
      ),
      body: const Text('Hello World'),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 200,
                child: const Text('Hello World'),
              );
            });
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 200,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'abc'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'ac'),
        ]),
      ),
    );
  }
}
