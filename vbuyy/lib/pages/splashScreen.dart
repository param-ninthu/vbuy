import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vbuyy/pages/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});

  final String title;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  _SplashScreenState() {
    new Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginPage()),
            (route) => false);
      });
    });

    new Timer(Duration(milliseconds: 10), () {
      setState(() {
        _isVisible = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 1200),
          child: Center(
            child: Container(
                height: 140.0,
                width: 140.0,
                child: Center(
                  child: ClipOval(
                      child: Icon(
                    Icons.handshake,
                    size: 128.0,
                    color: Colors.red,
                  )),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightBlueAccent,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          blurRadius: 2.0,
                          offset: Offset(1.0, 0.0),
                          spreadRadius: 2.0)
                    ])),
          )),
    );
  }
}
