import 'package:flutter/material.dart';

class RondomImage extends StatelessWidget {
  const RondomImage({Key? key, this.height = 100}) : super(key: key);
  final imageUrl = 'https://source.unsplash.com/random';
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, height: height, fit: BoxFit.cover);
  }
}
