import 'package:flutter/material.dart';
import 'package:hackerguide/appbar.dart';

import 'find.dart';
import 'team.dart';
import 'idea.dart';
import 'design.dart';
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
            primaryColor: const Color(0xFF133C55),
            textTheme: const TextTheme(
                headline1: TextStyle(fontSize: 96, color: Color(0xFF809BCE)),
                headline4: TextStyle(color: Color(0xFFFCA311)),
                headline6: TextStyle(fontSize: 56, color: Color(0xFFFCA311)),
                bodyText1: TextStyle(fontSize: 24, color: Colors.white),
                bodyText2: TextStyle(fontSize: 24, color: Colors.black))),
        initialRoute: '/',
        routes: {
          HomePage.route: (context) => HomePage(),
          FindPage.route: (context) => FindPage(),
          TeamPage.route: (context) => TeamPage(),
          IdeaPage.route: (context) => IdeaPage(),
          DesignPage.route: (context) => DesignPage(),
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
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Text(
                'This is a page title (headline1)',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Center(
              child: Text(
                'This is a section header (headline6)',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Center(
              child: Text(
                'This is some dark body text',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
