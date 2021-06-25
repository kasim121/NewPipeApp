import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newpipe/NewPipeHome/home_screen.dart';

class NewpipeApp extends StatelessWidget {
  const NewpipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NewPipe",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    displaySplashScreen();
  }

  void displaySplashScreen() {
    Timer(Duration(seconds: 5), () {
      {
        Route route = MaterialPageRoute(builder: (_) => HomeScreen());
        Navigator.pushReplacement(context, route);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Image.asset(
          'images/splash.jpg',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
      ],
    ));
  }
}
