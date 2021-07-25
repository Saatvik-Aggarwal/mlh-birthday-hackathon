import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
                            padding: const EdgeInsets.only(
                                left: 100, top: 25, bottom: 25, right: 25),
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
              color: const Color(0xFFC9FFC2),
              child: Center(
                  child: Text('Common Hackathon Locations',
                      style: Theme.of(context).textTheme.headline6)),
            ),
            Container(
              color: const Color(0xFFC9FFC2),
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
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            child: Text('Major League Hacking'),
                            onPressed: () => _launchURL('https://mlh.io/'),
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(MediaQuery.of(context).size.width * 4 / 10,
                                    75),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF809BCE)),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            child: Text('Devpost'),
                            onPressed: () =>
                                _launchURL('https://devpost.com/hackathons'),
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(MediaQuery.of(context).size.width * 4 / 10,
                                    75),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF809BCE)),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            child: Text('Hacker Earth'),
                            onPressed: () => _launchURL(
                                'https://www.hackerearth.com/challenges/hackathon/'),
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(MediaQuery.of(context).size.width * 4 / 10,
                                    75),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF809BCE)),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            child: Text('Hackathon.io'),
                            onPressed: () =>
                                _launchURL('https://www.hackathon.io/events'),
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(MediaQuery.of(context).size.width * 4 / 10,
                                    75),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF809BCE)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Find Others on Google!',
                              style: Theme.of(context).textTheme.bodyText2),
                        ),
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

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
