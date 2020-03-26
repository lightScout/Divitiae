import 'package:flutter/material.dart';
import 'bank_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:divitiae/widgets/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = ColorTween(begin: Colors.black, end: Color(0xFFD8C3BE))
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                  Hero(
//                    tag: 'logo',
//                    child: Container(
//                      child: Image.asset('images/logo.png'),
//                      height: 60.0,
//                    ),
//                  ),w
//
                SizedBox(
                  width: 250.0,
                  child: ColorizeAnimatedTextKit(
                    text: ['Welcome to your Spiritual Bank Account'],
                    speed: Duration(milliseconds: 22),
                    totalRepeatCount: 1,
                    textStyle: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 47.0,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Sen',
                    ),
                    colors: [
                      Colors.purpleAccent,
                      Colors.blueAccent,
                      Colors.yellowAccent,
                      Colors.redAccent,
                    ],
                    textAlign: TextAlign.center,
                    alignment: AlignmentDirectional.topStart,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Color(0xFF70A9A1),
              title: 'Open',
              function: () {
                Navigator.pushNamed(context, BankScreen.id);
              },
            ),
//            RoundedButton(
//              color: Color(0xFF40798C),
//              title: 'Register',
//              function: () {
//                Navigator.pushNamed(context, RegistrationScreen.id);
//              },
//            ),
          ],
        ),
      ),
    );
  }
}
