import 'package:digital_p_shala/clippers/my_clipper.dart';
import 'package:digital_p_shala/screens/authentication/forgot_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  final String type;
  LoginScreen(this.type);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.indigo, //or set color with: Color(0xFF0000FF)
    ));

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.indigo,
        body: Stack(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 120,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 50, bottom: 50),
                  child: Image.asset(
                    'assets/icon.png',
                    height: 120,
                  ),
                ),
                Container(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.transparent),
                      labelStyle:
                          TextStyle(wordSpacing: 0.0, color: Colors.white),
                      hintText: 'Email',
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.white)),
                      hintStyle: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.transparent),
                      labelStyle:
                          TextStyle(wordSpacing: 0.0, color: Colors.white),
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 35, right: 30),
                  child: Row(children: [
                    Text(
                      'Forgot password? ',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    GestureDetector(
                      child: Text(
                        'Reset.',
                        style: TextStyle(color: Colors.orangeAccent[200], fontSize: 16,),
                      ),
                      onTap: (){
                        print('forgot');
                        _navigateToForgotPasswordScreen();
                      },
                    ),
                  ]),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: OutlineButton(
                    highlightColor: Colors.indigo[800],
                    highlightedBorderColor: Colors.indigo,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      //TODO perform Login Button click
                      // validate mail and then perform login
                    },
                  ),
                )
              ],
            )
          ],
        ));
  }

  void _navigateToForgotPasswordScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
  }
}
