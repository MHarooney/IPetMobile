import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipet/constants/constants.dart';
import 'package:ipet/constants/ipet_dimens.dart';
import 'package:ipet/widgets/default_image.dart';
import 'package:ipet/widgets/ipet_custom_icon.dart';
import 'package:ipet/widgets/ipet_custom_sizedbox.dart';
import 'package:ipet/widgets/label.dart';
import 'package:ipet/widgets/my_custom_card.dart';

class CustomGridViewCard extends StatelessWidget {
  final String imgScr;
  final String title;
  final String location;
  final String members;
  final String orgBy;
  const CustomGridViewCard({
    Key key,
    this.imgScr,
    this.title,
    this.location,
    this.members,
    this.orgBy,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: IPetDimens.space30, bottom: IPetDimens.space30),
      child: MyCustomCard(
        colour: null,
        ipetDecoration: AppConst.greyBoxShadow,
        childCard: MyCustomCard(
          colour: null,
          ipetWidth: IPetDimens.space280,
          childCard: Column(
            children: <Widget>[
              DefaultImage(image: imgScr),
              Padding(
                padding: EdgeInsets.all(IPetDimens.space15),
                child: Column(
                  children: <Widget>[
                    Label(
                      text: title,
                      size: IPetDimens.space15,
                      fontWeight: FontWeight.bold,
                      height: IPetDimens.space1Point5,
                    ),
                    IPetCustomSizedBox(
                      height: IPetDimens.space10,
                    ),
                    Row(
                      children: <Widget>[
                        IPetCustomIcon(),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          location,
                          // style: contentBlack,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.users,
                          size: 17,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          members,
                          // style: contentBlack,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          size: 20,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RichText(
                          text: TextSpan(text: "Organized by ",
                              // style: contentBlack,
                              children: <TextSpan>[
                                TextSpan(
                                  text: orgBy,
                                  style:
                                      TextStyle(color: AppConst.kPrimaryColor),
                                ),
                              ]),
                        )
                        // Text("Organized by Laura ",style: contentBlack,)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
