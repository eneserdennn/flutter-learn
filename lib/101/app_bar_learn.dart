import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left),
        toolbarTextStyle: const TextStyle(
          color: Colors.blue,
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
