import 'package:digital_p_shala/clippers/my_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.normal,
                            fontSize: 30
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.normal,
                                fontSize: 25
                            ),
                          ),
                        )
                      ],
                    )
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(left: 35),
                        child: GestureDetector(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.orangeAccent[200],
                                fontSize: 16,
                              ),
                            ),
                            onTap: () {
                              _navigateToLogin(context);
                            }),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 30),
                        child: OutlineButton(
                          highlightColor: Colors.indigo[800],
                          highlightedBorderColor: Colors.indigo,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          onPressed: () {
                            //TODO perform reset Button click
                            // validate mail and then perform login
                          },
                          child: Text(
                            'Reset',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }

  void _navigateToLogin(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      SystemNavigator.pop();
    }
  }
}
