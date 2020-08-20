import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'SignUp.dart';
import 'categories_page.dart';
void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/SignIn': (BuildContext context) => SignIn(),
        '/SignUp': (BuildContext context) => SignUp(),
      },
      home: SignIn(),
    )
);