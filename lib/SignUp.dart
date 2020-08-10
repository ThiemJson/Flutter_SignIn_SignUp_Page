import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: color_1
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("Sign Up", style: TextStyle(fontSize: 61, color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Text('Create Your Account !!', style: TextStyle(fontSize: 20, color: Colors.white, fontStyle: FontStyle.italic),),
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
                            height: 100 ,
                            width: 80,
                            child: Image.asset('images/logo.jpg'),
                          ),
                          SizedBox(height: 0.0,),
                          Text('NashTech VietNam', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18 ),)
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(150),
                        bottomRight: Radius.circular(60),
                        bottomLeft: Radius.circular(150)
                      )
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
