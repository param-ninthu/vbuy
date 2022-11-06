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
      debugShowCheckedModeBanner: false,
      title: 'vBuyy',
      theme: ThemeData(
          primaryColor: _primaryColor,
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(secondary: _accentColor)),
      home: SplashScreen(title: 'vBuyy'),
    );
  }
}
