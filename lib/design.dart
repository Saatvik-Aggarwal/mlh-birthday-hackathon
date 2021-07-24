import 'package:flutter/material.dart';

import 'appbar.dart';

class DesignPage extends StatefulWidget {
  DesignPage({Key? key}) : super(key: key);
  static const String route = '/design';

  @override
  _DesignPageState createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: const Center(
        child: Text(
          'This is the Design page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
