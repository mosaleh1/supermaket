import 'package:flutter/material.dart';
import 'package:supermaket/ui/Login.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage("images/garden_shower.jpg"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.srcOver),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/carrot_fill.png",
                  width: 80.0,
                  height: 80.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                    ),
                    child: Text(
                      "\t\tWelcome\nto our store",
                    ),
                  ),
                ),
                const DefaultTextStyle(
                    style: TextStyle(color: Colors.white70, fontSize: 16.0),
                    child: Text("Get your groceries in as fast as one hour")),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                            })),
                  ),
                )
              ] /* add child content here */,
            ),
          ),
        ));
  }
}
