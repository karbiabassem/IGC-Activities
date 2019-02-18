import 'package:flutter/material.dart';

import './activities.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: this._formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'please enter an email';
                    }
                  },
                  onSaved: (String value) {
                    setState(() {
                      email = value;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'you@example.com', labelText: 'E-mail Address'),
                ),
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'please enter a password';
                    }
                  },
                  onSaved: (String value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'Password', labelText: 'Enter your Password'),
                ),
                Container(
                  child: Center(
                    child: RaisedButton(
                      child: Text('Login'),
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();
                        print(email);
                        print(password);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AcceuilPage()));
                      },
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
