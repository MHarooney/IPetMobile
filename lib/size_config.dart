import 'package:flutter/material.dart';

enum ScreenSize {
  SMALL,
  MEDIUM_1,
  MEDIUM_2,
  LARGE,
}

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

ScreenSize fetchScreenSizeInHeight(double height) {
  if (height < 600) {
    return ScreenSize.SMALL;
  } else if (height < 700 && height > 600) {
    return ScreenSize.MEDIUM_1;
  } else if (height < 800 && height > 700) {
    return ScreenSize.MEDIUM_2;
  } else {
    return ScreenSize.LARGE;
  }
}

double setWidgetHeight(ScreenSize screenSize, BuildContext context,
    double small, double medium1, double medium2, double large) {
  switch (screenSize) {
    case ScreenSize.SMALL:
      return MediaQuery.of(context).size.height * small;
      break;
    case ScreenSize.MEDIUM_1:
      return MediaQuery.of(context).size.height * medium1;
      break;
    case ScreenSize.MEDIUM_2:
      return MediaQuery.of(context).size.height * medium2;
      break;
    case ScreenSize.LARGE:
      return MediaQuery.of(context).size.height * large;
      break;
  }
}

double setWidgetWidth(ScreenSize screenSize, BuildContext context, double small,
    double medium1, double medium2, double large) {
  switch (screenSize) {
    case ScreenSize.SMALL:
      return MediaQuery.of(context).size.width * small;
      break;
    case ScreenSize.MEDIUM_1:
      return MediaQuery.of(context).size.width * medium1;
      break;
    case ScreenSize.MEDIUM_2:
      return MediaQuery.of(context).size.width * medium2;
      break;
    case ScreenSize.LARGE:
      return MediaQuery.of(context).size.width * large;
      break;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
