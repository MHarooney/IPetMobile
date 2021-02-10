import 'package:flutter/material.dart';

class IPetCustomCircleBtn extends StatelessWidget {
  IPetCustomCircleBtn({
    @required this.iconChild,
    this.onPressed,
    @required this.iPetFillColor,
    @required this.iPetIconColor,
    this.iPetChildCard,
    this.iPetBorderSide,
  });

  final IconData iconChild;
  final Function onPressed;
  final Color iPetFillColor;
  final Color iPetIconColor;
  final Widget iPetChildCard;
  final BorderSide iPetBorderSide;

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
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(
        side: iPetBorderSide,
      ),
      // shape: RoundedRectangleBorder(
      //   borderRadius: new BorderRadius.circular(30.0),
      // ),
      fillColor: iPetFillColor,
    );
  }
}
