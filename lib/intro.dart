import 'package:flutter/material.dart';
import 'package:structure_demo/global.dart';
import 'package:structure_demo/login.dart';

class Intro extends StatefulWidget {
  @override
  _Intro createState() => _Intro();
}

class _Intro extends State<Intro> {
  dynamic screenSize;
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/socialwallpaper.png',
          height: screenSize.height,
          width: screenSize.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  buttons('Login with Facebook', const Color(0xff3b5998),
                      Colors.white, const Color(0xff3b5998), () {}),
                  const SizedBox(height: 15),
                  buttons('Login with Google', Colors.white, Colors.black,
                      Colors.white, () {}),
                  const SizedBox(height: 15),
                  buttons(
                      'Log In', Colors.transparent, Colors.white, Colors.white,
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  }),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Don\'t have account?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => Registration(),
                          //   ),
                          // );
                        },
                        child: Text(' Sign up',
                            style: TextStyle(
                                color: green,
                                fontSize: 22,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buttons(String text, Color color, Color textColor, Color borderColor,
      VoidCallback onPress) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        width: screenSize.width - 70,
        height: 60,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: textColor),
        ),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor, width: 2),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
