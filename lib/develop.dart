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
              height: 800,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Text("Developing your Application",
                    style: Theme.of(context).textTheme.headline1),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Turning your design into reality",
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "You've got an amazing team, idea, and initial design. Now what? How do you turn your idea into reality?",
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.zero,
                  height: 600,
                  child: Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          "Writing a bunch of code to turn your idea into reality may seem intimidating at first, but don't worry; it all comes down to choosing a few frameworks and then searching up tutorials and documentation to learn how to use them. \nA framework is basically a bunch of basic code in a particular language that someone has written for you, so that most of the work you do will be towards actually getting your idea made, instead of figuring out the basics of some language. Of course, it is still possible to start from scratch, but it's highly recommended that you take advantage of some of the many frameworks available today.\nThere are a ton, so we've compiled our favorite ones based on ease of use, how productive we are with them, learning curve, performance, and capablities.",
                          softWrap: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                      height: 600,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset('images/develop_turn.jpg')
                                  .image))))
            ],
          )
        ],
      ),
    );
  }
}
