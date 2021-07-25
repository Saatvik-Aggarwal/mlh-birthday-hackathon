import 'package:flutter/material.dart';

import 'appbar.dart';
import 'team.dart';

class FindPage extends StatefulWidget {
  FindPage({Key? key}) : super(key: key);
  static const String route = '/find';

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SharedAppBar().build(context),
        body: ListView(
          children: [
            Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop),
                      image: AssetImage('images/findimage1.png'),
                      fit: BoxFit.cover),
                ),
                child: Column(children: <Widget>[
                  Container(
                    child: Center(
                      heightFactor: 3,
                      child: Text(
                        'Finding a Hackathon',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                ])),
            Container(
              color: Color.fromRGBO(19, 60, 85, 0.5),
              child: Center(
                  child: Text('What to Look For',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              color: Color.fromRGBO(19, 60, 85, 0.5),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                '1. General Info: What time is the hackathon? Can you make it and are you free for the work block?\n2. Size: Is it a large hackathon with big prizes or one with few people signed up?\n3. Theme: What is the theme of the hackathon? This will influence what you build.\n4. Level: Is it recommended for beginners or college graduates?\n5. What is the team size?\n',
                                style: Theme.of(context).textTheme.bodyText2))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [Image.asset('images/findimage2.jpg')],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Color.fromRGBO(19, 60, 85, 0.5),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [Image.asset('images/findimage3.jpg')],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Major League Hacking\nhttps://mlh.io/\n\nDevpost\nhttps://devpost.com/hackathons\n\nHacker Earth\nhttps://www.hackerearth.com/challenges/hackathon/\n\nHackathon.io\nhttps://www.hackathon.io/events\n\nGoogle',
                                style: Theme.of(context).textTheme.bodyText2))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                  child: Text('Found a Hackathon you like?',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(TeamPage.route);
                },
                child: Text('Click to move to the next step: Finding a Team'))
          ],
        ));
  }
}
