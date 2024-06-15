import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Container(
            height: 60,
          ),
          SizedBox(
              width: 400, height: 400, child: Image.asset("images/first.png")),
          const Spacer(),
          const Text(
            "WELCOME",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text("Login if you have account"),
          const Text("or signup if you don't have account"),
          Container(
            height: 40,
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            height: 50,
            minWidth: 250,
            color: const Color.fromARGB(255, 24, 108, 177),
            onPressed: () {
              Navigator.of(context).pushNamed("login");
            },
            child: const Text(
              "LOGIN",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Container(
            height: 15,
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            height: 50,
            minWidth: 250,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed("signin");
            },
            child: const Text(
              "SIGNUP",
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 24, 108, 177)),
            ),
          ),
          Container(
            height: 70,
          ),
          const Text(
            "or continue With:",
            style: TextStyle(color: Colors.grey),
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            minWidth: 0,
            onPressed: () {},
            child: Image.asset(
              "images/googlee.png",
              width: 40,
            ),
          ),
          Container(
            height: 10,
          ),
        ],
      ),
    );
  }
}
