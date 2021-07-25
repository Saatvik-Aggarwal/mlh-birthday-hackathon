import 'package:flutter/material.dart';

import 'appbar.dart';
import 'develop.dart';

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
      body: Center(
        child: ListView(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/designyourapp.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                    heightFactor: 2,
                    child: Text(
                      'Design Your App',
                      style: Theme.of(context).textTheme.headline1,
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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text('Know Your Team',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Every team is different, as everyone has unique skills. When you move into the design phase, start framing your app’s features. During ideas, your idea was only a short sentence, but during design you will plan out all the features and UI. If your team is new, start simple; if your team has a lot of graphics experience, have them work on the initial pathfinder and structure.',
                            style: Theme.of(context).textTheme.bodyText2))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [Image.asset('images/ideaimage1.png')],
                ),
              )
            ],
          ),
          Divider(
            height: 0,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text('Find Features',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                    'Remember the features you thought about during brainstorming. Now is the time to go more in depth on what your app will do.',
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('Idea Dump')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('Design')),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                          'Let’s Go! Is an app that will help people find hiking trails near by. Click a button and it will list the nearest trails as well as their information. Complete a trail to get points, and the higher/longer a trail, the more points you get.'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                            'App Needs: Login system, points tracking system, database API of trails\nUser: click button to list trails, mark trails as done + location, log on platform')),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                          'ClubProcess: Flagship high school clubs require a high level of organization to succeed in their respective fields or competitions. CP integrates clubs into a discord bot that packs all the features necessary. It can DM people if they do not respond, send out automatic reminders, support a custom configurable dictionary for jargon, and log attendance'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                            'App Needs: Discord API, database to hold information, user direct messaging capabilities, verify admin accounts\nUser: Commands to interact with bot and manage club')),
                  ),
                ]),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                    'Remember, the amount of features you put is what you should be working on for the rest of the hackathon. Don’t put more than you can feasibly complete.',
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("Let's Visualize",
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'The problem with ideas is that every team member will have a different visual picture of how an idea should be executed and viewed by the user. Before a single line of code is made, centralize everyone’s vision by creating a visual “prototype”. It can be done in Paint, Word, or anything that produces a simple image your team can understand and implement into an app. Flowcharts are also useful for app actions and interactions.\n\nMaking a visual:\n• Identifies UI elements required\n• Creates a blueprint for interactive use\n• Defines colors and layout\n• Programmers work to create visual using platform',
                            style: Theme.of(context).textTheme.bodyText2))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [Image.asset('images/designimage1.png')],
                ),
              )
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                    'Here is an example of a idea (this website) visualized in Word',
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [Image.asset('images/designimage2.png')],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [Image.asset('images/designimage3.png')],
                ),
              )
            ],
          ),
          Divider(
            height: 0,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("Got your visual?",
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                    'The visual is the last idea-based hurdle to your project. It’s time to get the code working!',
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(DevelopPage.route);
              },
              child: Text('Click to move to the next step: Develop'))
        ]),
      ),
    );
  }
}
