import 'package:flutter/material.dart';
import 'package:ipet/constants/constants.dart';
import 'package:ipet/screens/splash/components/body.dart';
import 'package:ipet/size_config.dart';

class SplashScreen extends StatelessWidget {
  // static String routeName = "/splash";
  static String id = 'SplashScreen';
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppConst.kPrimaryWhiteBgColor,
      body: SplashBody(),
    );
  }
}
