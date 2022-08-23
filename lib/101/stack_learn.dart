import 'package:flutter/material.dart';
import 'package:flutter_learn/core/rondom_image.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);
  final double _cardHeight = 100.0;
  final double _cardWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: const RondomImage(),
                      bottom: _cardHeight / 2,
                    ),
                    Positioned(
                      height: _cardHeight,
                      width: _cardWidth,
                      bottom: 0,
                      child: cardCustom(),
                    )
                  ],
                )),
            const Spacer(
              flex: 6,
            )
          ],
        ));
  }

  Card cardCustom() {
    return const Card(
      color: Colors.white,
    );
  }
}
