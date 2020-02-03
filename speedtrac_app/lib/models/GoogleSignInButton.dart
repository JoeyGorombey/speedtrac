import 'package:flutter/material.dart';
import 'package:speedtrac_app/screens/home/home.dart';
import 'package:speedtrac_app/services/authservice.dart';
AuthService authService = AuthService();

class GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        authService.signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context){return Home();}
            )
          );
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/google_logo.png'), height: 35.0),
            Text(
                "Sign In With Google",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey
              ),
            ),
          ],
        ),
      ),
    );
  }
}
