import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined,
                  color: Theme.of(context).colorScheme.error,
                  size: iconSize.iconSmall))
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
