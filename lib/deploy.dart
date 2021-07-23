import 'package:flutter/material.dart';

import 'appbar.dart';

class DeployPage extends StatefulWidget {
  DeployPage({Key? key}) : super(key: key);
  static const String route = '/deploy';

  @override
  _DeployPageState createState() => _DeployPageState();
}

class _DeployPageState extends State<DeployPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: const Center(
        child: Text(
          'This is the Deploy page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
