import 'package:flutter/material.dart';
import 'package:structure_demo/dashboard.dart';
import 'package:structure_demo/global.dart';
import 'package:structure_demo/shared%20widget/textField.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dynamic screenSize = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/loginwallpaper.jpeg',
          height: screenSize.height,
          width: screenSize.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Log In',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w700, color: green),
                ),
                const SizedBox(
                  height: 70,
                ),
                SingleLineTextfield(
                    controllerText: userName, hintText: 'Username'),
                const SizedBox(
                  height: 40,
                ),
                SingleLineTextfield(
                    controllerText: password, hintText: 'Password'),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: screenSize.width - 70,
                    height: 60,
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: green,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
