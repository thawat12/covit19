import 'package:flutter/material.dart';
import 'package:gatAPIDemo/gatapi.dart';

class Welcomepage extends StatefulWidget {
  Welcomepage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  child: Text('Get Covid Stat '),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GetAPI()));
                  }),
            ]),
      ),
    );
  }
}
