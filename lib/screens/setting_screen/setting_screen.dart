import 'package:flutter/material.dart';
import 'package:ipet/constants/ipet_dimens.dart';
import 'package:ipet/widgets/common/ipet_custom_scaffold.dart';
import 'package:ipet/widgets/default_image.dart';
import 'package:ipet/widgets/ipet_custom_appbar.dart';
import 'package:ipet/widgets/ipet_custom_icon.dart';
import 'package:ipet/widgets/label.dart';

import '../../constants/constants.dart';
import 'components/setting_body.dart';

class SettingScreen extends StatelessWidget {
  static String id = 'SettingScreen';

  @override
  Widget build(BuildContext context) {
    return IPetCustomScaffold(
      iPetBGScaffoldColor: AppConst.kPrimaryWhiteBgColor,
      iPetTopAppBar: IPetCustomTopBarWidget(
        iPetMiddlePart: [
          DefaultImage(
            image: 'assets/images/ipet_paw_img.png',
          ),
          Label(
            text: 'Settings',
          )
        ],
        iPetFirstPart: IPetCustomIcon(
          ipSize: IPetDimens.space20,
          ipFontIc: Icons.arrow_back_ios,
        ),
        iPetLastPart: [],
      ),
      body: SettingBody(),
    );
  }
}
