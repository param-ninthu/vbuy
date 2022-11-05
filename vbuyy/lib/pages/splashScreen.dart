import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                Theme.of(context).accentColor,
                Theme.of(context).primaryColor
              ],
              begin: const FractionalOffset(0, 0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp)),
      child: AnimatedOpacity(
        opacity: 1.0,
        duration: Duration(milliseconds: 1200),
        child: Center(
            child: Container(
          height: 140,
          width: 140,
          child: ClipOval(child: Icon(Icons.android_outlined)),
        )),
      ),
    );
  }
}
