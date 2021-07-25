import 'package:flutter/material.dart';

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
      body: ListView(
        children: [
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
                        "You've written all the code and it runs on your computer. Now it's time for everyone else to experience your creation.",
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
