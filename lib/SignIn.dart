
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static bool isSwitched = false;

  static var color_1 = (isSwitched)?Color(0xFFC41A3B):Color(0xDD4E342E);
  static var color_2 = (isSwitched)?Color(0xFFFBE0E6):Color(0xDD8D6E63);
  static var color_3 = Color(0xFF1B1F32);
  var changeMode = "Dark Mode";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            //Define height width
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            //Color
            decoration: BoxDecoration(
              color: color_1
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 80,),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text("Stay hungry - Stay foolish ", style: TextStyle(color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),),
                ),
                SizedBox(height: 60,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(160),
                          topLeft: Radius.circular(80)
                      )
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.00, right: 110.00, top: 40.0, bottom: 0.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              //color: Colors.green,
                              height: MediaQuery.of(context).size.height/1.5,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    //height: 60,
                                    decoration: BoxDecoration(
                                      color: color_2,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(18.00), bottomLeft: Radius.circular(18.0))
                                    ),
                                    child: TextField(
                                      cursorColor: color_1,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 17),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.email, color: color_1, size: 28,),
                                        hintText: 'Email Address or Mobile Number',
                                        hintStyle: TextStyle(fontStyle: FontStyle.italic, color: color_1, fontSize: 15)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    //height: 60
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                        color: color_2,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(18.00), bottomLeft: Radius.circular(18.0))
                                    ),
                                    child: TextField(
                                      obscureText: true,
                                      cursorColor: color_1,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 17),
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.lock, color: color_1, size: 28,),
                                          hintText: 'Password',
                                          hintStyle: TextStyle(fontStyle: FontStyle.italic, color: color_1, fontSize: 15),
                                          suffixIcon: Icon(Icons.remove_red_eye, color: color_1, size: 28,)
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(right: 18, left: 18, bottom: 10),
                                    child: ButtonTheme(
                                      height: 50,
                                      child: RaisedButton(
                                        elevation: 20,
                                        color: color_1,
                                        onPressed: (){},
                                        child: Text('SIGN IN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(0),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(15),
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      //color: Colors.red,
                                      padding: EdgeInsets.only(right: 25),
                                      //alignment: Alignment.topRight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(changeMode, style: TextStyle(color: color_1, fontSize: 15, fontStyle: FontStyle.italic),),
                                          ButtonTheme(
                                            child: Switch(
                                              value: isSwitched,
                                              onChanged: (value){
                                                setState(() {
                                                  isSwitched = !isSwitched;
                                                  color_1 = (isSwitched)?Color(0xFFC41A3B):Color(0xFF121212);
                                                  color_2 = (isSwitched)?Color(0xFFFBE0E6):Color(0xFFD6D6D6);
                                                  changeMode = (isSwitched)?"Light Mode":"Dark Mode";
                                                });
                                              },
                                              activeTrackColor: color_2,
                                              activeColor: color_1,
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

