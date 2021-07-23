import 'package:flutter/material.dart';

import 'appbar.dart';

class IdeaPage extends StatefulWidget {
  IdeaPage({Key? key}) : super(key: key);
  static const String route = '/idea';

  @override
  _IdeaPageState createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: const Center(
        child: Text(
          'This is the Idea page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
