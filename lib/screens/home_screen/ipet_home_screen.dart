// import 'package:flutter/material.dart';
// import 'package:ipet/models/notifiers/nav_b_bar/navigation_bbar_data.dart';
// import 'package:ipet/screens/home_screen/components/ipet_page_view.dart';
// import 'package:ipet/widgets/ipet_bottom_nav_bar.dart';
// import 'package:provider/provider.dart';
//
// class IPetNavHomeScreen extends StatelessWidget {
//   // static String routeName = "/home-screen";
//   static String id = "IPetNavHomeScreen";
//   @override
//   Widget build(BuildContext context) {
//     NavigationBBarData navigationBBarData =
//         Provider.of<NavigationBBarData>(context, listen: false);
//     navigationBBarData.pageController = PageController(
//       initialPage: navigationBBarData.currentIndex,
//       keepPage: true,
//     );
//     return Stack(
//       children: [
//         IPetPageView(),
//         Positioned(
//           left: 0,
//           right: 0,
//           bottom: 0,
//           child: IPetBottomNavBar(),
//           // child: IPetHomeScreen(),
//         ),
//       ],
//     );
//   }
// }
