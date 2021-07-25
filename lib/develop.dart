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
      body: ListView(
        children: [
          Stack(alignment: Alignment.center, children: <Widget>[
            Image.asset(
              "images/team_title_background.jpg",
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text("Developing your Application",
                style: Theme.of(context).textTheme.headline1),
          ]),
          Text(
            "You've got an amazing team, idea, and initial design. Now what? How do you turn your idea into reality?",
            style: Theme.of(context).textTheme.headline5,
          )
        ],
      ),
    );
  }
}
