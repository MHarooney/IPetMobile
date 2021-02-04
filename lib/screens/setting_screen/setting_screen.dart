import 'package:flutter/material.dart';
import 'package:ipet/screens/setting_screen/components/bott_nav_bar_content.dart';

import '../../constants/constants.dart';
import '../../widgets/label.dart';
import 'components/setting_body.dart';

class SettingScreen extends StatelessWidget {
  static String id = 'SettingScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            backgroundColor: AppConst.kPrimaryColor,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                onPressed: (){Navigator.pop(context);}),
            title: Label(text: 'Settings',textColor: AppConst.kPrimaryWhiteBgColor,)
        ),
        body: SettingBody(),
        bottomNavigationBar: BottNavBarContent()
    );
  }
}