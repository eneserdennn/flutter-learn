import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/column_row_learn.dart';
import 'package:flutter_learn/101/list_tile_learn.dart';
import 'package:flutter_learn/101/stack_learn.dart';
import 'package:flutter_learn/101/statefull_learn.dart';

import '101/icon_learn.dart';
import 'core/rondom_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
      )),
      home: const StatefullLearn(),
    );
  }
}
