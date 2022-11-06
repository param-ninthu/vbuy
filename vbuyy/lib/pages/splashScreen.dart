import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});

  final String title;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: AnimatedOpacity(
          opacity: 1.0,
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
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade500,
                          blurRadius: 2.0,
                          offset: Offset(1.0, 0.0),
                          spreadRadius: 2.0)
                    ])),
          )),
    );
  }
}
