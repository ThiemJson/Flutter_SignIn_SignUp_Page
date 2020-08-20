import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sigin_signup/ValidateInput.dart';
import 'CircleImage.dart';
import 'SignIn.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/SignUp';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      title: 'Sign Up page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyApp(),
    );*/
    return MyApp();
  }
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static var color_1 = (SignIn.isSwitched)?Color(0xFFC41A3B):Color(0xFF121212);
  static var color_2 = (SignIn.isSwitched)?Color(0xFFFBE0E6):Color(0xFFD6D6D6);
  //static var color_3 = Color(0xFF1B1F32);
  var changeMode = "Dark Mode";

  //TextFiel
  var _SignUp_txt_UserName = "";
  var  _SignUp_txt_UserEmail = "";
  var  _SignUp_txt_UserMobileNumber = "";
  var  _SignUp_txt_UserPass = "";

  var _SignUp_UserNameController = TextEditingController();
  var _SignUp_UserEmailController = TextEditingController();
  var _SignUp_UserMobileNumberController = TextEditingController();
  var _SignUp_UserPassController = TextEditingController();

  final formKey = GlobalKey<FormState>();
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
    _SignUp_UserNameController.dispose();
    _SignUp_UserPassController.dispose();
    _SignUp_UserMobileNumberController.dispose();
    _SignUp_UserEmailController.dispose();
  }
  void _SignUp_ButtonSignUpOnpress(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: color_1
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Sign Up", style: TextStyle(fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text('Create Your Account !!', style: TextStyle(fontSize: 15, color: Colors.white, fontStyle: FontStyle.italic),),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0)
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 90, left: 50, top: 12),
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 20,),
                              TextFormField(
                                controller: _SignUp_UserNameController,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                                onSaved: (text){
                                  setState(() {
                                    _SignUp_txt_UserName = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  fillColor: color_2,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      topLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                    )
                                  ),
                                  prefixIcon: Icon(Icons.person, color: color_1,),
                                  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                  hintText: 'Account name',
                                  hintStyle: TextStyle(color: color_1, fontStyle: FontStyle.italic),
                                ),
                                validator: (_SignUp_txt_UserName)=>_SignUp_txt_UserName.contains('@')?"Not a usernam":null,
                              ),
                              SizedBox(height: 15,),
                              TextFormField(
                                controller: _SignUp_UserEmailController,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                                onSaved: (text){
                                  setState(() {
                                    _SignUp_txt_UserEmail = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  fillColor: color_2,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        topLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                      )
                                  ),
                                  prefixIcon: Icon(Icons.email, color: color_1,),
                                  contentPadding: EdgeInsets.symmetric(vertical: 000, horizontal: 15),
                                  hintText: 'Email address',
                                  hintStyle: TextStyle(color: color_1, fontStyle: FontStyle.italic),
                                ),
                                validator: (_SignUp_txt_UserEmail)=>_SignUp_txt_UserEmail.contains('@')?"Not a usernam":null,
                              ),
                              SizedBox(height: 15,),
                              TextFormField(
                                controller: _SignUp_UserMobileNumberController,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                                onSaved: (text){
                                  setState(() {
                                    _SignUp_txt_UserMobileNumber = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  fillColor: color_2,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        topLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                      )
                                  ),
                                  prefixIcon: Icon(Icons.phone, color: color_1,),
                                  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                  hintText: 'Mobile number',
                                  hintStyle: TextStyle(color: color_1, fontStyle: FontStyle.italic),
                                ),
                                validator: (_SignUp_txt_UserMobileNumber)=>_SignUp_txt_UserMobileNumber.contains('@')?"Not a usernam":null,
                              ),
                              SizedBox(height: 15,),
                              TextFormField(
                                controller: _SignUp_UserPassController,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                                onSaved: (text){
                                  setState(() {
                                    _SignUp_txt_UserPass = text;
                                  });
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  fillColor: color_2,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        topLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                      )
                                  ),
                                  prefixIcon: Icon(Icons.lock, color: color_1,),
                                  contentPadding: EdgeInsets.symmetric(vertical: 00, horizontal: 15),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: color_1, fontStyle: FontStyle.italic),
                                ),
                                validator: (_SignUp_txt_UserPass)=>_SignUp_txt_UserPass.contains('@')?"Not a usernam":null,
                              ),
                              Spacer(),
                              Container(
                                //height: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: ButtonTheme(
                                        minWidth: double.infinity,
                                        height: 40,
                                        child: RaisedButton(
                                          onPressed: (){
                                            print("trigger");
                                            if(formKey.currentState.validate()){
                                              formKey.currentState.save();

                                            }
                                          },
                                          color: color_1,
                                          elevation: 25,
                                          child: Text('SIGN UP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(25),
                                              bottomLeft: Radius.circular(25),
                                              topLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            )
                                          ),
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      child: Text('SIGN IN', style: TextStyle(color: color_1, fontWeight: FontWeight.bold, fontSize: 15),),
                                      onPressed: (){
                                        Navigator.pushNamed(context, SignIn.routeName);
                                      },
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(bottom: 0),
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
