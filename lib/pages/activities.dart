import 'package:flutter/material.dart';

import './trainings/training_list.dart.dart';

class AcceuilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IGC Activities"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            child: Card(
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AllTrainings())),
                highlightColor: Colors.blueAccent[100],
                splashColor: Colors.red[900],
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10.0),
                          width: 150.0,
                          height: 200.0,
                          child: Image.asset("images/code.png")),
                      Center(
                          child: Text(
                        "Trainings",
                        textAlign: TextAlign.center,
                        //style: Theme.of(context).textTheme.headline,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100.0,
            child: Card(
              child: InkWell(
                onTap: () {},
                highlightColor: Colors.blueAccent[100],
                splashColor: Colors.blue[900],
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          width: 150.0,
                          child: Image.asset("images/events.jpg")),
                      Center(
                          child: Text(
                        "Events",
                        textAlign: TextAlign.center,
                        //style: Theme.of(context).textTheme.headline,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
