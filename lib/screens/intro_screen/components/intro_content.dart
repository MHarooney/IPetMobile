import 'package:flutter/material.dart';
import 'package:ipet/constants/constants.dart';
import 'package:ipet/widgets/label.dart';

class IntroContent extends StatefulWidget {
  const IntroContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  _IntroContentState createState() => _IntroContentState();
}

class _IntroContentState extends State<IntroContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Label(
          text: widget.text,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
          textColor: AppConst.kTextDarkColor,
        ),
        // Spacer(flex: 2),
        Image.asset(
          widget.image,
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.8,
        ),
      ],
    );
  }
}
