import 'package:flutter/material.dart';

import 'appbar.dart';
import 'idea.dart';

class TeamPage extends StatefulWidget {
  TeamPage({Key? key}) : super(key: key);
  static const String route = '/team';

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage('images/team_header.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  //color: const Color(0xFF694200), //TODO: change color to fit theme
                  child: Center(
                    heightFactor: 2,
                    child: Text(
                      'Finding a team',
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
                  padding: EdgeInsets.all(20),
                  //color:
                      //const Color(0xFFFFFFFF), //TODO: change color to fit theme
                  child: Center(
                    heightFactor: 1.5,
                    child: Text(
                        'You\'ve found a Hackathon that interests and excites you. Now, it\'s time to find a team.',
                        style: Theme.of(context).textTheme.headline5),
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
            color: const Color(0xFFBCF8EC), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text('Where to look for a teammate',
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
            padding: EdgeInsets.all(20),
            color: const Color(0xFFE9FFF9), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'Usually, a hackathon provides a way to find teammates. If the hackathon has a Discord server, you can check if there\'s a channel specifically for team-building. If you want to find a more permanent team that you can compete with for multiple hackathons, you can invite friends or classmates. If your school has a hackathon or programming club, be sure to join it and ask if anyone is interested in hacking with you.',
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
            color: const Color(0xFFBCF8EC), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text('What to look for in a team',
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
            padding: EdgeInsets.all(20),
            color: const Color(0xFFE9FFF9), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
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
            color: const Color(0xFFBCF8EC), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text('Do\'s and Don\'ts',
                  style: Theme.of(context).textTheme.headline6),
            ),
          ),
          Divider(
            height: 0,
            thickness: 5,
            indent: MediaQuery.of(context).size.width / 2 - 30,
            endIndent: MediaQuery.of(context).size.width / 2 - 30,
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width / 2,
                color:
                    const Color(0xFFC9FFC2), //TODO: change color to fit theme
                child: Center(
                  heightFactor: 1.5,
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width / 2,
                color:
                    const Color(0xFFFFC6D9), //TODO: change color to fit theme
                child: Center(
                  heightFactor: 1.5,
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ),
            ],
          ),
          Divider(
            height: 0,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            color: const Color(0xFFBCF8EC), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text('Can\'t find a team?',
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
            padding: EdgeInsets.all(20),
            color: const Color(0xFFE9FFF9), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'No worries! You can compete solo in most hackathons. And, you won\'t have to share any prizes!',
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
              Navigator.of(context).pushNamed(IdeaPage.route);
            },
            child: Text('Click to move to the next step: Making an Idea'),
          ),
        ],
      ),
    );
  }
}
