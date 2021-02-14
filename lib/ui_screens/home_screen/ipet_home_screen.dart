import 'package:flutter/material.dart';
import 'package:ipet/widgets/common/ipet_bottom_app_bar.dart';
import 'package:ipet/widgets/common/ipet_custom_scaffold.dart';

class IPetHomeScreen extends StatefulWidget {
  static String id = 'IPetHomeScreen';
  @override
  _IPetHomeScreenState createState() => _IPetHomeScreenState();
}

class _IPetHomeScreenState extends State<IPetHomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IPetCustomScaffold(
      iPetBottomAppBar: IPetBottomCommonAppBar(tabController: _tabController),
    );
  }
}
