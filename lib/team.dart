import 'package:flutter/material.dart';

import 'appbar.dart';

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
                image: AssetImage('images/team_header.jpg'),
                fit: BoxFit.cover
              ),
            ),
            //color: const Color(0xFF694200), //TODO: change color to fit theme
            child: Center(
              heightFactor: 2,
              child: Text(
                'Finding a team',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: const Color(0xFF420690), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: Theme.of(context).textTheme.bodyText2),
            ),
          ),
          Container(
            color: const Color(0x00000000), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text('What to look for in a teammate',
                  style: Theme.of(context).textTheme.headline6),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: const Color(0xFF420690), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: Theme.of(context).textTheme.bodyText2),
            ),
          ),
          Container(
            color: const Color(0xFF696942), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text('Where to look for a teammate',
                  style: Theme.of(context).textTheme.headline6),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: const Color(0xFF420690), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: Theme.of(context).textTheme.bodyText2),
            ),
          ),
          Container(
            color: const Color(0xFF696942), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text('Do\'s and Don\'ts',
                  style: Theme.of(context).textTheme.headline6),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: const Color(0xFF420690), //TODO: change color to fit theme
            child: Center(
              heightFactor: 1.5,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: Theme.of(context).textTheme.bodyText2),
            ),
          ),
        ],
      ),
    );
  }
}
