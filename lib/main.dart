import 'package:flutter/material.dart';
import 'package:simple_login_design/firstpage.dart';
import 'package:simple_login_design/forgotpass.dart';
import 'package:simple_login_design/login.dart';
import 'package:simple_login_design/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      routes: {
        "login": (context) => const LoginPage(),
        "signin": (context) => const SigninPage(),
        "forgotpassword": (context) => const ForgotPassword(),
      },
    );
  }
}
