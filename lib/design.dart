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
                      'Brainstorming a Design',
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
          Container(
            color: Color.fromRGBO(128, 155, 206, 1),
            child: Center(
              heightFactor: 1.5,
              child: Text('Know Your Team',
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
            color: Color.fromRGBO(128, 155, 206, 1),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 50),
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  child: Center(
                    heightFactor: 1.5,
                    child: Text(
                        'Every team is different, as everyone has unique skills. When you move into the design phase, start framing your app’s features. During ideas, your idea was only a short sentence, but during design you will plan out all the features and UI. If your team is new, start simple; if your team has a lot of graphics experience, have them work on the initial pathfinder and structure.',
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                ),
                Container(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width *(1 / 2 - 1 / 10),
                        maxHeight: MediaQuery.of(context).size.width / 2),
                    child: Image(
                      image: AssetImage('images/ideaimage1.png'),
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
            color: Color.fromRGBO(188, 248, 236, 1),
            child: Center(
              heightFactor: 1.5,
              child: Text('Find Features',
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
                  padding: EdgeInsets.symmetric(vertical:20, horizontal:MediaQuery.of(context).size.width / 10),
                  color: Color.fromRGBO(188, 248, 236, 1),
                  child: Center(
                    heightFactor: 1.5,
                    child: Text(
                        'Remember the features you thought about during brainstorming. Now is the time to go more in depth on what your app will do.',
                        style: Theme.of(context).textTheme.headline5),
                  ),
                ),
          
          Container(
            padding: EdgeInsets.symmetric(vertical:20, horizontal: MediaQuery.of(context).size.width/10),
            color: Color.fromRGBO(188, 248, 236, 1),
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
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10,
                vertical: MediaQuery.of(context).size.width / 75),
            color: Color.fromRGBO(188, 248, 236, 1),
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'Remember, the amount of features you put is what you should be working on for the rest of the hackathon. Don’t put more than you can feasibly complete.',
                  style: Theme.of(context).textTheme.bodyText2),
            ),
          ),
          Divider(
            height: 0,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),


          Container(
            color: Colors.black,
            child: Center(
              heightFactor: 1.5,
              child: Text('Let\'s Visualize',
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
            color: Colors.black, 
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 50),
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Center(
                    heightFactor: 1.5,
                    child: Text(
                        'The problem with ideas is that every team member will have a different visual picture of how an idea should be executed and viewed by the user. Before a single line of code is made, centralize everyone’s vision by creating a visual “prototype”. It can be done in Paint, Word, or anything that produces a simple image your team can understand and implement into an app. Flowcharts are also useful for app actions and interactions.\n\nMaking a visual:\n• Identifies UI elements required\n• Creates a blueprint for interactive use\n• Defines colors and layout\n• Programmers work to create visual using platform',
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                ),
                Container(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width *(1 / 2 - 1 / 10),
                        maxHeight: MediaQuery.of(context).size.width / 2),
                    child: Image(
                      image: AssetImage('images/designimage1.png'),
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
                  padding: EdgeInsets.all(20),
                  color: Color.fromRGBO(128, 128, 128, 1),
                  child: Center(
                    heightFactor: 1.5,
                    child: Text(
                      'Here is an example of a idea (this website) visualized in Word',
                      style: Theme.of(context).textTheme.bodyText2),
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
                 horizontal: MediaQuery.of(context).size.width / 3,
                 vertical: MediaQuery.of(context).size.width / 75),
            color: Color.fromRGBO(128, 128, 128, 1),
            child: Center(child:
              
                ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width *(1 / 2 - 1 / 10),
                        maxHeight: MediaQuery.of(context).size.width / 2),
                    child: Image(
                      image: AssetImage('images/designimage3.png'),
                    ),
                  ),
                
              
            ),
          ),
          
          

          Divider(
            height: 0,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            
            child: Center(
              heightFactor: 1.5,
              child: Text('Got your design?',
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
            
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'The visual is the last idea-based hurdle to your project. It’s time to get the code working!',
                  style: Theme.of(context).textTheme.bodyText2),
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
                Navigator.of(context).pushNamed(DevelopPage.route);
              },
              child: Text('Click to move to the next step: Develop'))
        ]),
      ),
    );
  }
}
