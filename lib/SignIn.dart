import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'CircleImage.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  static bool isSwitched = true;
  static const routeName = '/SignIn';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final formKey  = GlobalKey<FormState>();

  static var color_1 = (SignIn.isSwitched)?Color(0xFFC41A3B):Color(0xDD4E342E);
  static var color_2 = (SignIn.isSwitched)?Color(0xFFFBE0E6):Color(0xDD8D6E63);
  //static var color_3 = Color(0xFF1B1F32);
  var changeMode = "Dark Mode";

  var _SignIn_txt_UserName = "";
  var _SignIn_txt_Pass = "";

  final _SignIn_txt_UserName_Controller = TextEditingController();
  final _SignIn_txt_UserPass_Controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    color_1 = (SignIn.isSwitched)?Color(0xFFC41A3B):Color(0xFF121212);
    color_2 = (SignIn.isSwitched)?Color(0xFFFBE0E6):Color(0xFFD6D6D6);
    changeMode = (SignIn.isSwitched)?"Light Mode":"Dark Mode";
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _SignIn_txt_UserName_Controller.dispose();
    _SignIn_txt_UserPass_Controller.dispose();
  }

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
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("Stay hungry - Stay foolish ", style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: CircleImage(sizeOfImage: 100,pathImages: 'images/ThiemAvatar.jpg',),
                    )
                  ],
                ),
                SizedBox(height: 50,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(112),
                          topLeft: Radius.circular(50),
                      )
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.00, right: 50.00, top: 40.0, bottom: 0.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              //color: Colors.green,
                              height: MediaQuery.of(context).size.height/1.55,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Form(
                                    key: formKey,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        //color: color_2,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(18.00),
                                            bottomLeft: Radius.circular(18.0),
                                        )
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          TextFormField(
                                            controller: _SignIn_txt_UserName_Controller,
                                            cursorColor: color_1,
                                            decoration: InputDecoration(
                                              fillColor: color_2,
                                              filled:true,
                                              contentPadding: EdgeInsets.symmetric(vertical: 17),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: color_2),
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(22),
                                                    topLeft: Radius.circular(12),
                                                    bottomLeft: Radius.circular(22),
                                                    bottomRight: Radius.circular(12),
                                                  )
                                              ),
                                              prefixIcon: Icon(Icons.email, color: color_1, size: 28,),
                                              hintText: 'Email Address or Mobile Number',
                                              hintStyle: TextStyle(fontStyle: FontStyle.italic, color: color_1, fontSize: 15),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: color_2),
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(22),
                                                    topLeft: Radius.circular(12),
                                                    bottomLeft: Radius.circular(22),
                                                    bottomRight: Radius.circular(12),
                                                )
                                              )
                                            ),
                                            onSaved: (text){
                                              setState(() {
                                                _SignIn_txt_UserName = text;
                                              });
                                            },
                                            validator: (_SignIn_txt_UserName)=>_SignIn_txt_UserName.contains('@') ?'not a valid UserName':null,
                                          ),
                                          SizedBox(height: 20,),
                                          TextFormField(
                                            controller: _SignIn_txt_UserPass_Controller,
                                            obscureText: true,
                                            cursorColor: color_1,
                                            decoration: InputDecoration(
                                              fillColor: color_2,
                                              filled:true,
                                              contentPadding: EdgeInsets.symmetric(vertical: 17),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: color_2),
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(22),
                                                    topLeft: Radius.circular(12),
                                                    bottomLeft: Radius.circular(22),
                                                    bottomRight: Radius.circular(12),
                                                  )
                                              ),
                                              prefixIcon: Icon(Icons.lock, color: color_1, size: 28,),
                                              hintText: 'Password',
                                              hintStyle: TextStyle(fontStyle: FontStyle.italic, color: color_1, fontSize: 15),
                                              suffixIcon: Icon(Icons.remove_red_eye, color: color_1, size: 28,),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: color_2),
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(22),
                                                  topLeft: Radius.circular(12),
                                                  bottomLeft: Radius.circular(22),
                                                  bottomRight: Radius.circular(12),
                                                ),
                                              )
                                            ),
                                            onChanged: (text){
                                              setState(() {
                                                _SignIn_txt_UserName = text;
                                              });
                                            },
                                            validator: (_SignIn_txt_UserName)=>_SignIn_txt_UserName.contains('@') ?'Not a valid UserName':null,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                //  Spacer(),
                                  SizedBox(height: 50,),
                                  Spacer(),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(right: 18, left: 18, bottom: 10),
                                    child: ButtonTheme(
                                      height: 50,
                                      child: RaisedButton(
                                        elevation: 20,
                                        color: color_1,
                                        onPressed: (){
                                          if(formKey.currentState.validate()){
                                            formKey.currentState.save();
                                          }
                                        },
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
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Dont have account ??', style: TextStyle(color: color_1),),
                                        FlatButton(
                                          child: Text('SIGN UP', style: TextStyle(color: color_1, fontWeight: FontWeight.bold, fontSize: 15),),
                                          onPressed: (){
                                            Navigator.pushNamed(context, SignUp.routeName);
                                          },
                                        )
                                      ],
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
                                              value: SignIn.isSwitched,
                                              onChanged: (value){
                                                setState(() {
                                                  SignIn.isSwitched = !SignIn.isSwitched;
                                                  color_1 = (SignIn.isSwitched)?Color(0xFFC41A3B):Color(0xFF121212);
                                                  color_2 = (SignIn.isSwitched)?Color(0xFFFBE0E6):Color(0xFFD6D6D6);
                                                  changeMode = (SignIn.isSwitched)?"Light Mode":"Dark Mode";
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

