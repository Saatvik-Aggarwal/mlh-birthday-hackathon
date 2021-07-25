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
                headline3: TextStyle(fontSize: 36, color: Color(0xFFE9FFF9)),
                headline4: TextStyle(color: Color(0xFFFCA311)),
                headline5: TextStyle(fontSize: 36, color: Color(0xFF26081C)),
                headline6: TextStyle(fontSize: 56, color: Color(0xFFFCA311)),
                bodyText1: TextStyle(fontSize: 24, color: Colors.white),
                bodyText2: TextStyle(fontSize: 24, color: Colors.black)),
            cardTheme: const CardTheme(
              color: Color(0xFFDDDDDD),
            )),
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
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage('images/main_title.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      heightFactor: 2,
                      child: Text(
                        'What is a Hackathon?',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                  Divider(
                    height: 0,
                    thickness: 5,
                    indent: MediaQuery.of(context).size.width / 2 - 30,
                    endIndent: MediaQuery.of(context).size.width / 2 - 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: MediaQuery.of(context).size.width / 10),
                    child: Center(
                      heightFactor: 1.5,
                      child: Text(
                          'Do you want to hone your programming skills? Have fun with your friends? Win big prizes? If so, then hackathons are for you!',
                          style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              color: const Color(0xFFE9FFF9),
              child: Center(
                heightFactor: 1.5,
                child: Text('Hackathon = Hacking + Marathon',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: MediaQuery.of(context).size.width / 2 - 30,
              endIndent: MediaQuery.of(context).size.width / 2 - 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 10,
                  vertical: MediaQuery.of(context).size.width / 75),
              color: const Color(0xFFE9FFF9),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Center(
                      heightFactor: 1.5,
                      child: Text(
                          'The "hack" in "hackathon" refers to general programming, not to breaching computer security; in hackathons you can expect to create functional software (or hardware) that usually fits a theme. Hackathons also have a tight deadline, so you can expect to be coding for much of the day (hence "marathon").',
                          style: Theme.of(context).textTheme.bodyText2),
                    ),
                  ),
                  Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width *
                              (1 / 2 - 1 / 10),
                          maxHeight: MediaQuery.of(context).size.width / 2),
                      child: Image(
                        image: AssetImage('images/main_body.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              color: const Color(0xFFE9FFF9),
              child: Center(
                heightFactor: 1.5,
                child: Text('Why Hack?',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: MediaQuery.of(context).size.width / 2 - 30,
              endIndent: MediaQuery.of(context).size.width / 2 - 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 10,
                  vertical: MediaQuery.of(context).size.width / 75),
              color: const Color(0xFFE9FFF9),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 50),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      heightFactor: 1.5,
                      child: Text(
                          'There are many reasons to compete in a hackathon. Other than the prizes (which are often worthwhile), hackathons also improve your programming skills, expand your fields of expertise, and get you accustomed to coding under pressure and time. Thus, hackathons are an invaluable method of job preparation. Likewise, hackathons encourage extensive teambuilding, communication, and planning. Finally, hackathons are fun, especially if you follow some easy steps to get the most out of your hackathons.',
                          style: Theme.of(context).textTheme.bodyText2),
                    ),
                  ),
                  Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width *
                              (1 / 2 - 1 / 10),
                          maxHeight: MediaQuery.of(context).size.width / 2),
                      child: Image(
                        image: AssetImage('images/main_collage.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              color: const Color(0xFFE9FFF9),
              child: Center(
                heightFactor: 1.5,
                child: Text('The Six Steps to Start Hacking',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: MediaQuery.of(context).size.width / 2 - 30,
              endIndent: MediaQuery.of(context).size.width / 2 - 30,
            ),
            Container(
              color: const Color(0xFFE9FFF9),
              child: Center(
                heightFactor: 1.1,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(FindPage.route);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 5 / 10,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width/6),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('1. Finding a Hackathon',
                                style: Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(
                                MediaQuery.of(context).size.width * 5 / 10, 75),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF809BCE)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(TeamPage.route);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 5 / 10,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width/6),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('2. Finding a Team',
                                style: Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(
                                MediaQuery.of(context).size.width * 5 / 10, 75),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF809BCE)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(IdeaPage.route);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 5 / 10,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width/6),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('3. Making an Idea',
                                style: Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(
                                MediaQuery.of(context).size.width * 5 / 10, 75),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF809BCE)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(DesignPage.route);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 5 / 10,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width/6),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('4. Brainstorming a Design',
                                style: Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(
                                MediaQuery.of(context).size.width * 5 / 10, 75),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF809BCE)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(DevelopPage.route);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 5 / 10,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width/6),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('5. Creating your Application',
                                style: Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(
                                MediaQuery.of(context).size.width * 5 / 10, 75),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF809BCE)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(DeployPage.route);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 5 / 10,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width/6),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('6. Deploying your Application',
                                style: Theme.of(context).textTheme.bodyText2),
                          ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(
                                MediaQuery.of(context).size.width * 5 / 10, 75),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF809BCE)),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(FindPage.route);
              },
              child:
                  Text('Click to move to the next step: Finding a Hackathon'),
            ),
          ],
        ),
      ),
    );
  }
}
