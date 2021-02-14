import 'package:flutter/widgets.dart';
import 'package:ipet/ui_screens/intro_screen/intro_screen.dart';
import 'package:ipet/ui_screens/login_screen/login_screen.dart';
import 'package:ipet/ui_screens/splash/splash_screen.dart';

// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // IntroScreen.routeName: (context) => IntroScreen(),
  // IPetLoginScreen.routeName: (context) => IPetLoginScreen(),
  // IPetNavHomeScreen.routeName : (context)=> IPetNavHomeScreen(),
  // IPetRoutePaths.introScreen: (context) => IntroScreen(),
  // IPetRoutePaths.loginScreen: (context) => IPetLoginScreen(),
  // IPetRoutePaths.homeScreen :(context)=> IPetNavHomeScreen(),

  SplashScreen.id: (context) => SplashScreen(),
  IntroScreen.id: (context) => IntroScreen(),
  IPetLoginScreen.id: (context) => IPetLoginScreen(),
};
