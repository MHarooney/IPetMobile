import 'package:flutter/material.dart';

class IPetCustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget iPetTopAppBar;
  final PreferredSizeWidget iPetBottomAppBar;
  final Key ipKey;

  const IPetCustomScaffold({
    @required this.body,
    this.ipKey,
    this.iPetTopAppBar,
    this.iPetBottomAppBar,
  });

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      key: ipKey,
      appBar: iPetTopAppBar,
      body: SafeArea(
        child: body,
      ),
      bottomNavigationBar: iPetBottomAppBar,
    );
  }
}
