import 'package:flutter/material.dart';

class IPetCommonAppBar extends StatelessWidget {
  const IPetCommonAppBar({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            children: [
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(color: Colors.blue),
              Container(color: Colors.blue),
            ],
            controller: _tabController,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  color: Colors.black54,
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.business)),
                      Tab(icon: Icon(Icons.school)),
                      Tab(icon: Icon(Icons.school)),
                      Tab(icon: Icon(Icons.school)),
                    ],
                    controller: _tabController,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
