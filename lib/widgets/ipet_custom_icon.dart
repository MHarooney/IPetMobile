import 'package:flutter/material.dart';
import 'package:ipet/constants/constants.dart';

class IPetCustomIcon extends StatelessWidget {
  IPetCustomIcon({
    @required this.ip_size,
    @required this.ip_font_ic,
    this.colour = AppConst.kBlueBlackColor,
  });

  final IconData ip_font_ic;
  final double ip_size;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Icon(
      ip_font_ic,
      size: ip_size,
      color: colour,
    );
  }
}
