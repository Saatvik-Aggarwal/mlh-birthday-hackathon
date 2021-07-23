import 'package:flutter/material.dart';

import 'appbar.dart';

class FindPage extends StatefulWidget {
  FindPage({Key? key}) : super(key: key);
  static const String route = '/find';

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: const Center(
        child: Text(
          'This is the find page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
