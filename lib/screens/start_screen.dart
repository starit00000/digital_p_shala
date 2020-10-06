import 'file:///C:/Users/PCFIX/AndroidStudioProjects/digital_p_shala/lib/screens/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.indigo, //or set color with: Color(0xFF0000FF)
    ));

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            WaveWidget(
              config: CustomConfig(
                gradients: [
                  [Colors.indigo, Colors.indigo]
                ],
                durations: [40000],
                heightPercentages: [0.20],
                blur: MaskFilter.blur(BlurStyle.solid, 2),
              ),
              waveAmplitude: 0,
              waveFrequency: 4,
              size: Size(
                double.infinity,
                double.infinity,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 60),
                    alignment: Alignment.center,
                    width: 200,
                    child: Image.asset('app_icon.png'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _navigateToLoginScreen('teacher');
                  },
                  child: ClipPath(
                    clipper: TriangleClipper(),
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      color: Colors.white,
                      alignment: Alignment.topCenter,
                      height: 120,
                      width: 160,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            size: 35,
                            color: Colors.pink,
                          ),
                          Container(
                            child: Text(
                              'Teacher',
                              style: TextStyle(
                                color: Colors.indigo,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _navigateToLoginScreen('student'),
                  child: ClipPath(
                    clipper: TriangleClipper(),
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      color: Colors.white,
                      alignment: Alignment.topCenter,
                      height: 120,
                      width: 160,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person_pin,
                            size: 35,
                            color: Colors.red,
                          ),
                          Container(
                            child: Text(
                              'Student',
                              style: TextStyle(
                                color: Colors.indigo,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _navigateToLoginScreen('parents'),
                  child: ClipPath(
                    clipper: TriangleClipper(),
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      color: Colors.white,
                      alignment: Alignment.topCenter,
                      height: 120,
                      width: 160,
                      child: Column(
                        children: [
                          Icon(
                            Icons.group,
                            size: 35,
                            color: Colors.red,
                          ),
                          Container(
                            child: Text(
                              'Parents',
                              style: TextStyle(
                                color: Colors.indigo,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],),
      ),
    );
  }

  void _navigateToLoginScreen(String type){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(type)));
  }

}
