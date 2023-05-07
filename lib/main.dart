import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_screen/utils/constants.dart';
import 'package:flutter_login_screen/utils/image.dart';
import 'package:flutter_login_screen/utils/txt.dart';

import 'pages/welcome_page.dart';

void main() {
  runApp(const LoginUIApp());
}

class LoginUIApp extends StatelessWidget {
  const LoginUIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.15),
            ),
          ),
        ),
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          labelLarge: TextStyle(
            color: kPrimaryColor,
          ),
          displayLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
      ),
      home: WelcomePage(),
    );
  }
}
