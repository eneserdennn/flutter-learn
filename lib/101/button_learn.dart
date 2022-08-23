import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'TextButton',
                style: Theme.of(context).textTheme.subtitle1,
              )),
          ElevatedButton(onPressed: null, child: const Text('ElevatedButton')),
          IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
          FloatingActionButton(
              onPressed: () {}, child: Icon(Icons.add_circle_sharp)),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: StadiumBorder(side: BorderSide(color: Colors.blue))),
              onPressed: null,
              child: const Text('OutlinedButton')),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          )
        ],
      ),
    );
  }
}
