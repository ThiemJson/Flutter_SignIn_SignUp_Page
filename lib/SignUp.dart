import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sigin_signup/ValidateInput.dart';
import 'CircleImage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up page',
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
  static bool isSwitched = true;

  static var color_1 = (isSwitched)?Color(0xFFC41A3B):Color(0xDD4E342E);
  static var color_2 = (isSwitched)?Color(0xFFFBE0E6):Color(0xDD8D6E63);
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


  void _SignUp_ButtonSignUpOnpress(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            //CircleImage(pathImages: 'images/logo.jpg',sizeOfImage: 100,),
                            Container(
                              height: 70 ,
                              width: 70,
                              child: Image.asset('images/logo.jpg'),
                            ),
                            Text('NashTech VietNam', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15 ),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height/1.2,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                          color: color_2,
                          borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0)
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 90, left: 50, top: 20),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            Container( // Person
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                color: color_1,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )
                              ),
                              child: TextFormField(
                                controller: _SignUp_UserNameController,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                                onChanged: (text){
                                  setState(() {
                                    _SignUp_txt_UserName = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.person, color: Colors.white,),
                                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                  hintText: 'Account name',
                                  hintStyle: TextStyle(color: Colors.white54, fontStyle: FontStyle.italic),

                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container( // Email address
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: color_1,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  )
                              ),
                              child: TextFormField(
                                controller: _SignUp_UserEmailController,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                                onChanged: (text){
                                 setState(() {
                                   _SignUp_txt_UserEmail = text;
                                 });
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.email, color: Colors.white,),
                                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(color: Colors.white54, fontStyle: FontStyle.italic , ),
                                ),

                              ),
                            ),
                            SizedBox(height: 15,),
                            Container( // Phone Number
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: color_1,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  )
                              ),
                              child: TextFormField(
                                controller: _SignUp_UserMobileNumberController,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                                onChanged: (text){
                                  setState(() {
                                    _SignUp_txt_UserMobileNumber = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.phone, color: Colors.white,),
                                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                  hintText: 'Mobile number',
                                  hintStyle: TextStyle(color: Colors.white54, fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container( // Password
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: color_1,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  )
                              ),
                              child: TextFormField(
                                controller: _SignUp_UserPassController,
                                obscureText: true,
                                style: TextStyle(color: Colors.white, fontSize: 18),
                                onChanged: (text){
                                  setState(() {
                                    _SignUp_txt_UserPass = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.lock, color: Colors.white,),
                                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.white54, fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: ButtonTheme(
                                    minWidth: double.infinity,
                                    height: 55,
                                    child: RaisedButton(
                                      onPressed: (){
                                        setState(() {
                                          _SignUp_ButtonSignUpOnpress();
                                        });
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
                                SizedBox(height: 15,),
                                Container(
                                    margin: EdgeInsets.only(bottom: 30),
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
      ),
    );
  }
}
