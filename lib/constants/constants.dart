import 'package:flutter/material.dart';

import '../size_config.dart';

class AppConst {
  static const kPrimaryColor = Color(0xFF88D9DE);
  static const kPrimaryLightColor = Color(0xFFFFECDF);
  static const kPrimaryWhiteBgColor = Color(0xFFFFFFFF);
  static const kPrimarySemiWhiteColor = Color(0xFFF9F9F9);
  static const kNewColor = Color(0xFFF9F9F9);
  // static const kPrimaryGradientColor = LinearGradient(
  //   begin: Alignment.topLeft,
  //   end: Alignment.bottomRight,
  //   colors: [Color(0xFF73C2FB), Color(0xFF00B6F0)],
  // );
  static const kSecondaryColor = Color(0xFF979797);
  static const kTextColor = Color(0xFF757575);
  static const kTextDarkColor = Color(0xFF5D5D5D);
  static const kBlackColor = Color(0xFF000000);
  static const nearlyBlack = Color(0xFF213333);
  static const kTextRareGoldColor = Color(0xFFF7D4C2);
  static const kTextLightRedColor = Color(0xFFFFE2E2);
  static const kTextLighterRedColor = Color(0xFFFFF8F8);

  static const kAnimationDuration = Duration(milliseconds: 200);

  final headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );

  static const defaultDuration = Duration(milliseconds: 250);

// Form Error
  final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String kEmailNullError = "Please Enter your email";
  static const String kInvalidEmailError = "Please Enter Valid Email";
  String kPassNullError = "Please Enter your password";
  static const String kShortPassError = "Password is too short";
  static const String kMatchPassError = "Passwords don't match";
  static const String kNamelNullError = "Please Enter your name";
  static const String kPhoneNumberNullError = "Please Enter your phone number";
  static const String kAddressNullError = "Please Enter your address";

  //Constants Texts
  static const String kNotNowTxt = "Not now!";
  static const String kPrivacyAndPolicyTxt = "Check Privacy & Policy";
  static const String kLoginTo = "Login to";
  static const String kPhoneNoTxt = "Phone number";
  static const String kLoginPhoneNoTxt = "Login with phone number";
  static const String kPleaseEnterPhoneNoTxt = "Please Enter Phone Number";
  static const String kOrTxt = "OR";
  static const String kLoginWithGoogleTxt = "Login with Google";
  static const String kLoginWithFaceBookTxt = "Login with Facebook";
  static const String kLoginWithAppleTxt = "Login with Apple";
  static const String kContinueTxt = "Continue";
  static const String kPhoneCallOrTxtMsg =
      "We will call or text you to confirm your number. \nStandard message and data rates apply.";

  //Assets
  static const String kPrivacyAndPolicyTxtIc = "assets/images/privacy_ic.png";
  static const String kIPetPawIc = "assets/images/ipet_paw_img.png";
  static const String kIPetTxtImg = "assets/images/ipet_text_img.png";

  final otpInputDecoration = InputDecoration(
    contentPadding:
        EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
  );

  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
      borderSide: BorderSide(color: kTextColor),
    );
  }

  //Fonts
  static const String montserrat = "Montserrat";

  static BoxShadow iPetLoginBoxShadow({Color btnColor}) {
    return BoxShadow(
      color: btnColor,
      spreadRadius: 2,
      blurRadius: 4,
      offset: const Offset(0, 3), // changes position of shadow
    );
  }
}
