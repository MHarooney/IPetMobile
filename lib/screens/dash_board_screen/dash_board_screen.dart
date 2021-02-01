import 'package:flutter/material.dart';
import 'package:ipet/widgets/common/ipet_custom_scaffold.dart';
import 'package:ipet/widgets/custom_grid_view_card.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return IPetCustomScaffold(
      // appBar: IPetAppBar(),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Hi, Mahmoud",
                  // style: appTitle,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: size.width * 0.7,
                    child: Text(
                      "Check out the new products, groups, events, places and more!",
                      // style: contentBlack,
                    )),
                SizedBox(
                  height: 50,
                ),
                // DogCard(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Walk groups".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Text("See All")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CustomGridViewCard(
                        imgScr: "assets/images/pet_places.png",
                        title: "Meet our lovely dogs walking with us",
                        location: "Valencia, Spain",
                        members: "8 memmbers",
                        orgBy: "Laura",
                      ),
                      CustomGridViewCard(
                        imgScr: "assets/images/pet_places.png",
                        title: "Meet our lovely dogs walking with us",
                        location: "Valencia, Spain",
                        members: "8 memmbers",
                        orgBy: "Laura",
                      ),
                      // WalkGroupCard()
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
