import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:supermaket/ui/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void navigateToNextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>  HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/img.png",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Get your groceries \nwith nectar",
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              const SizedBox(
                height: 20.0,
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'EG',
                onChanged: (phone) {
                  // print(phone.completeNumber);
                },
              ),
              const Center(
                child: Text(
                  "Or connect with social Media",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: InkWell(
                    onTap: () {
                      navigateToNextScreen(context);
                    },
                    child: Ink(
                      color: const Color(0xFF397AF3),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Image.asset(
                              "images/gogl.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Sign in with Google',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: InkWell(
                    onTap: () {
                      navigateToNextScreen(context);
                    },
                    child: Ink(
                      color: const Color(0xFF4267B2),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Image.asset(
                              "images/facebook.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Sign in with Facebook',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
