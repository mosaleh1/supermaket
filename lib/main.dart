import 'package:flutter/material.dart';
import 'ui/SplashScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splashscreen',
    routes: {
      '/splashscreen': (context) => const SplashScreen(),
    },
  ));
}
