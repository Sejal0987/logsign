import 'package:flutter/material.dart';
import 'package:crystaspace/widget/round_button.dart';
import 'signup.dart';
import 'login.dart';
import 'package:google_fonts/google_fonts.dart';
class WelcomePage extends StatefulWidget {
  static const id = 'welcome_page';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}
class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'images/logo.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 150.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white.withOpacity(0.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Lets Design',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RoundButton(
                    text: 'Sign up',
                    onPressed: () {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    },
                    color: Colors.black54,
                  ),
                  RoundButton(
                    text: 'Log in',
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
