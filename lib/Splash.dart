import 'dart:async';
import 'package:mp3player2/PlayScreen.dart';

import 'Home.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key key,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      return Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => PlayScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Welcome",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: FlareActor(
        'Assets/splash2.flr',
        animation: 'Splash_Loop',
      ),
    );
  }
}
