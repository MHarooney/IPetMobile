import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IPetCustomCircleBtn extends StatelessWidget {
  IPetCustomCircleBtn({
    @required this.iconChild,
    this.onPressed,
    @required this.iPetFillColor,
    @required this.iPetIconColor,
    this.iPetChildCard,
    this.iPetBorderSide,
    this.iPetShapeBorder,
    this.constraintWidth,
    this.constraintHeight,
  });

  final IconData iconChild;
  final Function onPressed;
  final Color iPetFillColor;
  final Color iPetIconColor;
  final Widget iPetChildCard;
  final BorderSide iPetBorderSide;
  final ShapeBorder iPetShapeBorder;
  final double constraintWidth;
  final double constraintHeight;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        iconChild,
        color: iPetIconColor,
      ),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: constraintWidth,
        height: constraintHeight,
      ),
      shape: iPetShapeBorder,
      // shape: RoundedRectangleBorder(
      //   borderRadius: new BorderRadius.circular(30.0),
      // ),
      fillColor: iPetFillColor,
    );
  }
}
