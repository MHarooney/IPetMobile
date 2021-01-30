import 'package:flutter/material.dart';
import 'package:ipet/screens/intro_screen/components/body_intro_screen.dart';
import 'package:ipet/size_config.dart';

class IntroScreen extends StatelessWidget {
  // static String routeName = "/splash";
  static String id = 'IntroScreen';
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: BodyIntroScreen(),
    );
  }
}
