import 'package:flutter/material.dart';
import 'package:structure_demo/global.dart';

class Registration extends StatefulWidget {
  @override
  _Registration createState() => _Registration();
}

class _Registration extends State<Registration> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
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
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w700, color: green),
                ),
                const SizedBox(
                  height: 70,
                ),
                TextField(
                  controller: userName,
                  decoration: const InputDecoration(hintText: 'Username'),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: password,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: password,
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: screenSize.width - 70,
                    height: 60,
                    child: Text(
                      'Sign Up',
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
