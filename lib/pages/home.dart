import 'package:flutter/material.dart';

import './register.dart';

import './sign_in.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IGC"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(25.0),
            height: 100.0,
            width: 100.0,
            child: Image.asset('images/logoigc.png'),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
            child: Text("ALL YOU NEED IS GOOGLE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 25.0)),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Singn In'),
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                RaisedButton(
                  child: Text('Singn Up'),
                  color: Colors.greenAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
