import 'dart:async';

import 'package:flutter/material.dart';
import 'Home.dart';
import 'Splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
