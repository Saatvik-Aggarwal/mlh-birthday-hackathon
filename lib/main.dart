import 'package:flutter/material.dart';
import 'package:hackerguide/appbar.dart';

import 'find.dart';
import 'team.dart';
import 'idea.dart';
import 'brainstorm.dart';
import 'develop.dart';
import 'deploy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hacker Guide',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          HomePage.route: (context) => HomePage(),
          FindPage.route: (context) => FindPage(),
          TeamPage.route: (context) => TeamPage(),
          IdeaPage.route: (context) => IdeaPage(),
          BrainstormPage.route: (context) => BrainstormPage(),
          DevelopPage.route: (context) => DevelopPage(),
          DeployPage.route: (context) => DeployPage()
        });
  }
}

class HomePage extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
