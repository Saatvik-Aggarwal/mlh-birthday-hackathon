import 'package:flutter/material.dart';

import 'appbar.dart';
import 'design.dart';

class IdeaPage extends StatefulWidget {
  IdeaPage({Key? key}) : super(key: key);
  static const String route = '/idea';

  @override
  _IdeaPageState createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
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
                      image: AssetImage('images/thinkofyouridea.png'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Center(
                        heightFactor: 2,
                        child: Text(
                          'Think of Your Idea',
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
                  child: Text('Reach Deep!',
                      style: Theme.of(context).textTheme.headline6)),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Why is the idea important? After you find your team’s idea, the rest of the time you spend will solely be centered around your idea. This includes designing, developing, and deploying your new idea. This is why it is essential to create the best idea possible, in order to make your time worthwhile and give you the best chance at winning.',
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
                  child: Text('Brainsplat Ideas',
                      style: Theme.of(context).textTheme.headline6)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'When you brainstorm, the main goal is to dump out as many ideas as possible to review with your team. After all, if you never write down a good idea no one will know. However, there should be some loose boundaries for your mind to follow as you jot down ideas.',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "A good idea: \n1. Is within your team's abilities AND timeline\n2. Solves a real world problem\n3. Is not overdone (unique solution)\n4. Follows hackathon theme/prize categories")),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Bad Idea')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Why?')),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                              'A.I. that solves homework through PDF upload with handwriting mimicking'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Too hard to do in 2 days')),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('4 Function Calculator App'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Commonly Available')),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                              'App that finds bus stops at specific altitudes'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text('What problem does this solve?')),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                              'Idle videogame in medical solution related hackathon'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Does not adhere to theme')),
                      ),
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Make 10-20 ideas! The more you make, the more opportunities for your team',
                    style: Theme.of(context).textTheme.bodyText2,
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
                  child: Text('Picking an Idea',
                      style: Theme.of(context).textTheme.headline6)),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Now that you have your ideas, your team should pick one, but make sure to keep note of these rules:\n• Can your team understand the idea?\n• Is it unique and does it solve a real world problem?\n• Does it align to a hackathon theme?\n• If it involves hardware, is the hardware simple enough to design and deploy?"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: Column(
                          children: [Image.asset('images/ideaimage2.png')],
                        ),
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Winning Idea')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Description')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Award')),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('FindMe'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Travel checklist app')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('1st Place Overall')),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('Travelisory'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                                'Helps plan vacations with a 3D interactable map')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Best use of CockroachDB')),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('Locate My Luggage'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text('Tracks your luggage with a RPI')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('3rd Place Overall')),
                      ),
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                        'Most of these ideas are not that complicated! After all, everyone has the same couple of days to finish their hack.\n\n\nYou don’t have to win 1st place – most hackathons have lots of different categories for prizes. Aim for one specifically and your team can achieve it!',
                        style: Theme.of(context).textTheme.bodyText2)),
              ),
              Divider(
                height: 0,
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text('Got your idea?',
                        style: Theme.of(context).textTheme.headline6)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                        'No matter if it’s a hackathon or science fair, people always say the idea is the hardest part. Now that you have an idea, your team has a defined purpose: finish the hack by the deadline and have fun!',
                        style: Theme.of(context).textTheme.bodyText2)),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(DesignPage.route);
                  },
                  child: Text('Click to move to the next step: Design'))
            ],
          ),
        ));
  }
}
