import 'package:flutter/material.dart';

import 'appbar.dart';

class TeamPage extends StatefulWidget {
  TeamPage({Key? key}) : super(key: key);
  static const String route = '/team';

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: const Center(
        child: Text(
          'This is the Team page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
