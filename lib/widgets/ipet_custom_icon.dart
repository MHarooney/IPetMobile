import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IPetCustomIcon extends StatelessWidget {
  const IPetCustomIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.mapMarkerAlt,
      size: 17,
    );
  }
}
