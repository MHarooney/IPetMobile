import 'package:flutter/material.dart';
import 'package:ipet/constants/constants.dart';
import 'package:ipet/constants/ipet_dimens.dart';
import 'package:ipet/models/notifiers/intro_screen/intro_screen_data.dart';
import 'package:ipet/responsive_ui/base_widget.dart';
import 'package:ipet/screens/intro_screen/components/intro_content.dart';
import 'package:ipet/screens/login_screen/login_screen.dart';
import 'package:ipet/size_config.dart';
import 'package:ipet/utils/animated_dot_container.dart';
import 'package:ipet/widgets/default_image.dart';
import 'package:ipet/widgets/ipet_custom_sizedbox.dart';
import 'package:ipet/widgets/ipet_default_button.dart';
import 'package:provider/provider.dart';

class BodyIntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context) => SafeArea(
        child: IPetCustomSizedBox(
          iPetChild: Column(
            children: <Widget>[
              // IPetCustomSizedBox(
              //   height: IPetDimens.space20,
              // ),
              DefaultImage(
                image: AppConst.kIPetPawIc,
                width: IPetDimens.space200,
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              DefaultImage(
                image: AppConst.kIPetTxtImg,
                width: 200,
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Expanded(
                flex: 3,
                child: Consumer<IntroScreenData>(
                  builder: (context, introScreenData, child) {
                    return PageView.builder(
                      onPageChanged: (value) {
                        introScreenData.changeDotSize(value);
                      },
                      // itemCount: introData.length,
                      itemCount: introScreenData.introCount,
                      itemBuilder: (context, index) => IntroContent(
                        image: introScreenData.introData[index]["image"],
                        text: introScreenData.introData[index]['text'],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  Provider.of<IntroScreenData>(context).introCount,
                  (index) => AnimatedDotContainer(index: index),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          getProportionateScreenWidth(IPetDimens.space20)),
                  child: Column(
                    children: <Widget>[
                      // Spacer(),
                      Spacer(flex: 2),
                      // DefaultButton(
                      //   text: AppConst.kContinueTxt,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(IPetDimens.space10),
                      //   ),
                      //   press: () {
                      //     // Navigator.pushNamed(context, SignInScreen.routeName);
                      //     Navigator.pushNamed(context, IPetLoginScreen.routeName);
                      //   },
                      // ),

                      IPetDefaultButton(
                        onTap: () {
                          Navigator.pushNamed(context, IPetLoginScreen.id);
                        },
                        buttonTitle: AppConst.kContinueTxt,
                        colour: AppConst.kPrimaryColor,
                        height: getProportionateScreenHeight(56),
                        width: double.infinity,
                        textColour: AppConst.kPrimaryWhiteBgColor,
                        myBorderRadius: BorderRadius.circular(
                          IPetDimens.space10,
                        ),
                        iPetBoxShadow: [
                          AppConst.iPetLoginBoxShadow(
                            btnColor: AppConst.kPrimaryColor
                                .withOpacity(0.6), // changes position of shadow
                          ),
                        ],
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
