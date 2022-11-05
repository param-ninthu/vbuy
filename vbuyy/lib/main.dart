import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vbuyy/pages/splashScreen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  Color _accentColor = HexColor('#2A9AA9');
  Color _primaryColor = HexColor('#fff');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vBuyy',
      theme: ThemeData(
          primaryColor: _primaryColor,
          accentColor: _accentColor,
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
          primarySwatch: Colors.blue),
      home: SplashScreen(title: 'vBuyy'),
    );
  }
}
