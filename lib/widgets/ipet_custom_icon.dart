import 'package:flutter/material.dart';

class IPetCustomIcon extends StatelessWidget {
  IPetCustomIcon({
    @required this.ip_size,
    @required this.ip_font_ic,
  });

  final IconData ip_font_ic;
  final double ip_size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      ip_font_ic,
      size: ip_size,
    );
  }
}
