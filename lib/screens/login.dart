import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/round_button.dart';
import 'package:crystaspace/constants.dart';
import 'package:crystaspace/widget/bgContainer.dart';
import 'package:crystaspace/widget/MyTextField.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/p11.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          BgContainer(),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 200.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.white.withOpacity(0.4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                      ),
                      MyTextField(
                        text: false,
                        keyboard: TextInputType.emailAddress,
                        decoration: kInputField.copyWith(
                          hintText: 'Enter your email.',
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      MyTextField(
                        text: true,
                        keyboard: TextInputType.text,
                        decoration: kInputField.copyWith(
                          hintText: 'Enter your password.',
                          labelText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      RoundButton(
                          color: Colors.black,
                          text: 'Log In',
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
