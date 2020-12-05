import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uts_18111167/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "splash_screen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  removeScreen() {
    return _timer = Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(LoginScreen.id);
    });
  }

  @override
  void initState() {
    super.initState();
    removeScreen();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image(
          width: 150,
          color: Colors.white,
          image: AssetImage(
            "assets/image/splash logo.png",
          ),
        ),
      ),
    );
  }
}
