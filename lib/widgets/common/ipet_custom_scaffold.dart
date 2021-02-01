import 'package:flutter/material.dart';

class IPetCustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget iPetAppBar;

  const IPetCustomScaffold({
    @required this.body,
    this.iPetAppBar,
  });

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      appBar: iPetAppBar,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
