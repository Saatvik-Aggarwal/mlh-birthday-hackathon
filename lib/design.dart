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
      body: Center(
        child: ListView(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/designyourapp.png"),
                ),
              )),
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
                            'Every team is different, with everyone’s skills. When you move into the design phase, start framing your app’s features. During ideas your idea was only a short sentence, but during design you’ll plan out all thefeatures and UI. If your team is new, start simple; if your team has a lot of graphics experience, have them work on the initial pathfinder for looks.',
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
                          '“Let’s Go! Is an app that will help people find hiking trails near by. Click a button and it will list the nearest trails as well as their information. Compelte a trail to get points, and the higher/longer a trail, the more points you get.'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                            'App Needs: Login system, points tracking system, database API of trailsUser: click button to list trails, mark trails as done + location, log on platform')),
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
                    'Remember, the amount of features you put is what you should be working on for the rest of the hackathon. Don’t put more than you can chew',
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ),
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
                            'Every team is different, with everyone’s skills. When you move into the design phase, start framing your app’s features. During ideas your idea was only a short sentence, but during design you’ll plan out all thefeatures and UI. If your team is new, start simple; if your team has a lot of graphics experience, have them work on the initial pathfinder for looks.',
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
        ]),
      ),
    );
  }
}
