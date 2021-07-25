import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'appbar.dart';

class DeployPage extends StatefulWidget {
  DeployPage({Key? key}) : super(key: key);
  static const String route = '/deploy';

  @override
  _DeployPageState createState() => _DeployPageState();
}

class _DeployPageState extends State<DeployPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar().build(context),
      body: ListView(children: [
        Stack(alignment: Alignment.center, children: <Widget>[
          Image.asset(
            "images/deploy_title_background.jpg",
            height: 800,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Text("Deploying your Application",
                  style: Theme.of(context).textTheme.headline1),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "From localhost to awesomeproject.tech",
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
                      "Great! You've written all the code and it runs on your computer. Now it's time for everyone else to experience your creation.",
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
                flex: 6,
                child: Container(
                    height: 600,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                                    'images/cloud-deployment-models.jpg')
                                .image)))),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.zero,
                height: 600,
                color: const Color(0xFFC9FFC2),
                child: Card(
                  margin: EdgeInsets.all(36),
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Wait, what does "deployment" even mean?',
                            style: Theme.of(context).textTheme.headline5,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              "Deployment just means putting your software on someone else's computer. This allows users to interact with your software 24/7, without you having to worry about opening up your computer to the public. There are many different options for deployment, which vary depending on what you are deploying. During a hackathon, you will typically want to stick to free deployment solutions. However, there are so many out there, it's hard to decide which one to use. That's why we have created a great list of options that should serve basically every purpose you need!",
                              softWrap: true,
                              textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 800,
                height: 800,
                child: Card(
                    color: Colors.transparent,
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 35, right: 35, top: 25),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Front End",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "No matter what platform you are deploying on, you will probably have to generate a release / build. The page you're seeing right now is a Flutter build.",
                              style: Theme.of(context).textTheme.headline3,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              """To deploy your Android app, you have two options: either publish to the Android App Store or publish an APK on a simple website which serves as a download portal.\nTo deploy your iOS app, your best bet is to deploy to the App Store.\nFor deploying a desktop application, you should build executable files and publish them on a website.""",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () => launch(
                                    "https://developer.android.com/studio/publish"),
                                child: Text(
                                    "Learn more about Android Publishing")),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () => launch(
                                    "https://developer.apple.com/ios/submit/"),
                                child: Text(
                                    "    Learn more about iOS Publishing    ")),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'For web pages / applications, it gets a bit more complicated. After you create your build, you will have a bunch of files. Users won\'t "install" these, so a web server needs to serve these files. Luckily, there are a bunch of free places you can host your website.',
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () =>
                                    launch("https://pages.github.com/"),
                                child: const Text(
                                    "      Github Pages (Our favorite)      ")),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () =>
                                    launch("https://www.000webhost.com/"),
                                child: const Text(
                                    "  000webhost (has more features)   ")),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () =>
                                    launch("https://www.netlify.com/"),
                                child: const Text(
                                    "      Netlify (also high quality)      "))
                          ],
                        ),
                      ),
                    )),
              ),
              VerticalDivider(
                color: Colors.grey.shade100,
                width: 5,
              ),
              Container(
                width: 800,
                height: 800,
                child: Card(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Text(
                          "Back End",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Deploying your backend is more interesting - it's not just static files which are served, so they require processing power. However, there are still some great free solutions.",
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'One of the best and most versatile free solutions is Heroku. You get 550 free hours per month (and another 450 free if you just attach a credit card). If you\'re only hosting one application at a time, Heroku is a great solution!',
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () => launch("https://heroku.com/"),
                            child: const Text("      Heroku      ")),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Another awesome and very popular solution is Firebase. Firebase has a ton of built in solutions that can help you get up and running quickly.',
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () => launch("https://firebase.com/"),
                            child: const Text("      Firebase      ")),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'While Heroku and Firebase should cover most of your needs, here are some other notable ones.',
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () => launch("https://fly.io/"),
                            child: const Text("      Fly.io     ")),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () =>
                                launch("https://www.heliohost.org/"),
                            child:
                                const Text("      HelioHost (non-profit)   ")),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () => launch("https://www.deta.sh/"),
                            child:
                                const Text("      Deta.sh (unlimited!)    ")),
                      ],
                    )),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        SizedBox(
          height: 233,
          child: FittedBox(
            child: Image.asset('images/deploy_congrats.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              "Congrats! You should be ready to submit now! Some hackathons require demo videos, so make sure to record one if needed.",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ]),
    );
  }
}
