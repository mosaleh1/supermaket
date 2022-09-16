import 'dart:async';

import 'package:flutter/material.dart';
import 'package:supermaket/ui/OnBoardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/carrot.png",
            width: 80.0,
            height: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "nectar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                  ),
                ),
                Text("online groceriet",
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
