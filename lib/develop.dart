import 'package:flutter/material.dart';
import 'package:hackerguide/deploy.dart';
import 'package:url_launcher/url_launcher.dart';
import 'appbar.dart';

class DevelopPage extends StatefulWidget {
  DevelopPage({Key? key}) : super(key: key);
  static const String route = '/develop';

  @override
  _DevelopPageState createState() => _DevelopPageState();
}

class _DevelopPageState extends State<DevelopPage> {
  List<End> frontends = [
    End("Flutter", ["ExpressJS"], "https://flutter.dev"),
    End("React", ["Django", "ExpressJS"], "https://reactjs.org/"),
    End("NextJS", ["ExpressJS"], "https://nextjs.org/"),
    End("Vue.js", ["ExpressJS", "Laravel"],
        "https://v3.vuejs.org/guide/introduction.html"),
    End("AngularJS", ["ExpressJS"], "https://angularjs.org/"),
    End("jQuery", ["Django"], "https://jquery.com/")
  ];
  List<End> backends = [
    End("ExpressJS", ["Flutter", "React", "NextJS", "Vue.js", "AngularJS"],
        "http://expressjs.com/"),
    End("Django", ["NextJS", "React", "AngularJS", "jQuery"],
        "https://www.djangoproject.com/"),
    End("Laravel", ["Vue.js"], "https://laravel.com/"),
    End("CakePHP", [], "https://cakephp.org/"),
    End("Flask", ["React", "Vue.js"], "https://flask.palletsprojects.com/"),
    End("Ruby on Rails", [], "https://rubyonrails.org/")
  ];
  End? selectedFrontEnd;
  End? selectedBackEnd;

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
                      padding: const EdgeInsets.all(48.0),
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
          ),
          Container(
            color: const Color(0xFF809BCE),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Popular frameworks",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                    "Here are the best and easiest to use frameworks in the industry.",
                    style: Theme.of(context).textTheme.headline5),
                Padding(
                  padding: const EdgeInsets.only(left: 200, right: 200),
                  child: Text(
                    "The best way to learn these frameworks is to visit their official website and just get started learning, or search up some youtube tutorials and start there. Either way, these will make development a breeze. Practicing with them with your team before the hackathon rather than during it will be incredibly helpful.",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 600,
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(left: 100),
                            padding: const EdgeInsets.all(25),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF133C55),
                            ),
                            height: 1200,
                            child: Column(
                              children: [
                                Center(
                                    child: Text(
                                  "Front Ends",
                                  style: Theme.of(context).textTheme.headline3,
                                )),
                                const Center(
                                    child: Text(
                                  "A frontend is what your user will see. Click on any frontend to select it. Doing so will highlight specific backends that might be easier to use with that frontend. Click on the selected frontend again to open up the frontend's home page to learn more.",
                                  textAlign: TextAlign.center,
                                )),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 350,
                                  child: ListView.separated(
                                    itemCount: frontends.length,
                                    itemBuilder: (context, index) {
                                      var c = MaterialStateProperty.all(
                                          Colors.white);
                                      if (selectedBackEnd != null &&
                                          selectedBackEnd!.associatedEnds
                                              .contains(
                                                  frontends[index].name)) {
                                        c = MaterialStateProperty.all(
                                            Colors.amber);
                                      }
                                      if (frontends[index].selected) {
                                        c = MaterialStateProperty.all(
                                            Colors.blue);
                                      }
                                      return Center(
                                        child: SizedBox(
                                          width: 200,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: c,
                                              ),
                                              onPressed: () {
                                                selectFrontEnd(index);
                                              },
                                              child: Text(
                                                frontends[index].name,
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              )),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(height: 20),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      const VerticalDivider(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(right: 100),
                            padding: const EdgeInsets.all(25),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF133C55),
                            ),
                            height: 1200,
                            child: Column(
                              children: [
                                Center(
                                    child: Text(
                                  "Back Ends",
                                  style: Theme.of(context).textTheme.headline3,
                                )),
                                const Center(
                                    child: Text(
                                  "A backend makes any connections to your database(s) or private servers, so the user's device doesn't have to. Backends often contain sensitive credentials that you should make sure stay private. These backends are some of the best and easiest to use.",
                                  textAlign: TextAlign.center,
                                )),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 350,
                                  child: ListView.separated(
                                    itemCount: backends.length,
                                    itemBuilder: (context, index) {
                                      var c = MaterialStateProperty.all(
                                          Colors.white);
                                      if (selectedFrontEnd != null &&
                                          selectedFrontEnd!.associatedEnds
                                              .contains(backends[index].name)) {
                                        c = MaterialStateProperty.all(
                                            Colors.amber);
                                      }
                                      if (backends[index].selected) {
                                        c = MaterialStateProperty.all(
                                            Colors.blue);
                                      }
                                      return Center(
                                        child: SizedBox(
                                          width: 200,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: c,
                                              ),
                                              onPressed: () {
                                                selectBackEnd(index);
                                              },
                                              child: Text(
                                                backends[index].name,
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              )),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(height: 20),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(DeployPage.route);
                  },
                  child: const Text(
                      'Made your project? Here\'s how to deploy it so anyone can use it',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void selectFrontEnd(index) {
    setState(() {
      for (int i = 0; i < frontends.length; i++) {
        if (i == index) {
          if (frontends[i].selected) {
            launch(frontends[i].url);
          } else {
            selectedFrontEnd = frontends[i];
            frontends[i].selected = true;
          }
        } else {
          frontends[i].selected = false;
        }
      }
    });
  }

  void selectBackEnd(index) {
    setState(() {
      for (int i = 0; i < backends.length; i++) {
        if (i == index) {
          if (backends[i].selected) {
            launch(backends[i].url);
          } else {
            selectedBackEnd = backends[i];
            backends[i].selected = true;
          }
        } else {
          backends[i].selected = false;
        }
      }
    });
  }
}

class End {
  final String name;
  final String url;
  var selected = false;
  List<String> associatedEnds;
  End(this.name, this.associatedEnds, this.url);
}
