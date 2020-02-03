import 'package:firebase_ui/flutter_firebase_ui.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:speedtrac_app/services/authservice.dart';
import 'package:speedtrac_app/models/GoogleSignInButton.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  AuthService _authInstance = AuthService();

  // use auth service to sign a user in when the click the sign in button, and register a user if they are not already registered.
  // auth service object should handle listening for state changes, sign outs,
  // authenticate is the widget we will display if the user needs to sign in or register
  // auth service object should handle listening for state changes, sign outs,

  // AUTHSERVICES METHODS SHOULD NOT BE HERE-- THEY SHOULD BE IN AUTH SERVICE


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Speedtrac!"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GoogleSignInButton(),
            SizedBox(height: 8.0),
            RaisedButton(
              onPressed: () {},
              child: Text('Facebook'),
            ),
            SizedBox(height: 8.0),
            RaisedButton(
              onPressed: () {},
              child: Text('Phone'),
            ),
            SizedBox(height: 8.0),
            RaisedButton(
              onPressed: () {},
              child: Text('Email'),
            ),
            SizedBox(height: 8.0),
            RaisedButton(
              onPressed: () {},
              child: Text('Twitter'),
            ),
          ],
        ),
      ),
    );
  }
}
