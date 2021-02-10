import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipet/constants/ipet_dimens.dart';
import 'package:ipet/widgets/default_image.dart';
import 'package:ipet/widgets/ipet_custom_icon.dart';
import 'package:ipet/widgets/ipet_custom_sizedbox.dart';

class IPetCustomBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final String iPetPawImage;
  final double iPetIconSize;
  final IconData iPetListIconData;

  @override
  final Size preferredSize;

  IPetCustomBarWidget({
    @required this.title,
    this.iPetIconSize = IPetDimens.space20,
    this.iPetListIconData,
    this.iPetPawImage,
  }) : preferredSize = Size.fromHeight(IPetDimens.space60);

  ShapeBorder kBackButtonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(IPetDimens.space30),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: IPetDimens.space15),
            child: IPetCustomIcon(
              ip_size: iPetIconSize,
              ip_font_ic: FontAwesomeIcons.list,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultImage(
                  image: 'assets/images/ipet_paw_img.png',
                ),
                DefaultImage(
                  image: 'assets/images/ipet_text_img.png',
                ),
              ],
            ),
          ),
          Row(
            children: [
              IPetCustomIcon(
                ip_size: 20,
                ip_font_ic: FontAwesomeIcons.search,
              ),
              IPetCustomSizedBox(
                width: IPetDimens.space30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: IPetCustomIcon(
                  ip_size: 20,
                  ip_font_ic: FontAwesomeIcons.bell,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
