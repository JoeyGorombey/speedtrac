import 'package:flutter/material.dart';
import 'package:speedtrac_app/screens/authenticate/authenticate.dart';
import 'package:speedtrac_app/screens/home/home.dart';

class Manager extends StatefulWidget {
  @override
  _ManagerState createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  @override
  Widget build(BuildContext context) {
    // return either home or authenticate widget
    return Authenticate();
  }
}
