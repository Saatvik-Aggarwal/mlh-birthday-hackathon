import 'package:flutter/material.dart';
import 'package:hackerguide/design.dart';
import 'package:hackerguide/deploy.dart';
import 'package:hackerguide/develop.dart';
import 'package:hackerguide/idea.dart';
import 'package:hackerguide/main.dart';
import 'package:hackerguide/team.dart';

import 'find.dart';

class SharedAppBar {
  AppBar build(BuildContext context) {
    return AppBar(title: const Text('HackerGuide'), actions: <Widget>[
      TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.route);
          },
          child: const Text(
            'What is a Hackathon',
            style: TextStyle(color: Color(0xFFFCA311)),
          )),
      TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(FindPage.route);
          },
          child: const Text('Finding a Hackathon',
              style: TextStyle(
                color: Color(0xFFFCA311),
              ))),
      TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(TeamPage.route);
          },
          child: const Text('Finding a Team',
              style: TextStyle(
                color: Color(0xFFFCA311),
              ))),
      TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(IdeaPage.route);
          },
          child: const Text('Making an Idea',
              style: TextStyle(
                color: Color(0xFFFCA311),
              ))),
      TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(DesignPage.route);
          },
          child: const Text('Brainstorming a Design',
              style: TextStyle(
                color: Color(0xFFFCA311),
              ))),
      TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(DevelopPage.route);
          },
          child: const Text('Creating your application',
              style: TextStyle(
                color: Color(0xFFFCA311),
              ))),
      TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(DeployPage.route);
          },
          child: const Text('Deploying your application',
              style: TextStyle(
                color: Color(0xFFFCA311),
              ))),
    ]);
  }
}
