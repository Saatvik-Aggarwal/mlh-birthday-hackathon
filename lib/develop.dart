import 'package:flutter/material.dart';

import 'appbar.dart';

class DevelopPage extends StatefulWidget {
  DevelopPage({Key? key}) : super(key: key);
  static const String route = '/develop';

  @override
  _DevelopPageState createState() => _DevelopPageState();
}

class _DevelopPageState extends State<DevelopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: const Center(
        child: Text(
          'This is the Develop page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
