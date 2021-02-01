import 'package:flutter/material.dart';

class IPetCustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget iPetAppBar;
  final Key ipKey;

  const IPetCustomScaffold({
    @required this.body,
    @required this.ipKey,
    this.iPetAppBar,
  });

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      key: ipKey,
      appBar: iPetAppBar,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
