import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbuyy/pages/splashScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double _drawerIconSize = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor
                ]),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 16, right: 16),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6)),
                    constraints: BoxConstraints(minWidth: 12, minHeight: 12),
                    child: Text(
                      '5',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.1],
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.2),
                Theme.of(context).accentColor.withOpacity(0.1)
              ],
            ),
          ),
          child: ListView(children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 0.1],
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.2),
                      Theme.of(context).accentColor.withOpacity(0.1)
                    ],
                  )),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'vBuyy',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.screen_lock_landscape_rounded,
                size: _drawerIconSize,
                color: Theme.of(context).accentColor,
              ),
              title: Text(
                'Splash Screen',
                style: TextStyle(
                    fontSize: 17, color: Theme.of(context).accentColor),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SplashScreen(title: "Splash Screen")));
              },
            )
          ]),
        ),
      ),
    );
  }
}
