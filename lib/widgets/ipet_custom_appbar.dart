import 'package:flutter/material.dart';
import 'package:ipet/models/notifiers/app_bar/ipet_bar_notifer.dart';
import 'package:ipet/widgets/common/ipet_custom_scaffold.dart';
import 'package:provider/provider.dart';

class IPetCustomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<IPetBarNotifier>(
        builder: (context, iPetBarNotiSelector, child) {
      return IPetCustomScaffold(
        ipKey: IPetBarNotifier.scaffoldKey,
        body: Container(
          height: 160.0,
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                child: Center(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Positioned(
                top: 80.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 1.0),
                        color: Colors.white),
                    child: Row(
                      children: [
                        // IconButton(
                        //   icon: Icon(
                        //     Icons.menu,
                        //     color: Colors.red,
                        //   ),
                        //   onPressed: () {
                        //     print("your menu action here");
                        //     IPetBarNotifier.currentState.openDrawer();
                        //   },
                        // ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            print("your menu action here");
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            print("your menu action here");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
