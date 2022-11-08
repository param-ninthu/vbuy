import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:vbuyy/pages/widgets/headerWidget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: 150,
            child: HeaderWidget(150, true, Icons.person_add_alt_1_rounded),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    GestureDetector(
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 5, color: Colors.white),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 20,
                                  offset: const Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.grey.shade300,
                              size: 80.0,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.grey.shade700,
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      )),
    );
  }
}
