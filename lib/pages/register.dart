import 'package:flutter/material.dart';
import './sign_in.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String name = '';
  String email = '';
  String phoneNumber = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Acount'),
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
                      return 'please enter a name';
                    }
                  },
                  onSaved: (String value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration:
                      InputDecoration(hintText: 'Name', labelText: 'Name'),
                ),
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
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'please enter an phone number';
                    }
                  },
                  onSaved: (String value) {
                    setState(() {
                      phoneNumber = value;
                    });
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: '99 000 000', labelText: 'Phone Number'),
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
                      child: Text('Create Account'),
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();
                        print(name);
                        print(email);
                        print(phoneNumber);
                        print(password);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
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
