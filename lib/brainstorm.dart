import 'package:flutter/material.dart';

import 'appbar.dart';

class BrainstormPage extends StatefulWidget {
  BrainstormPage({Key? key}) : super(key: key);
  static const String route = '/brainstorm';

  @override
  _BrainstormPageState createState() => _BrainstormPageState();
}

class _BrainstormPageState extends State<BrainstormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: const Center(
        child: Text(
          'This is the Brainstorm page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
