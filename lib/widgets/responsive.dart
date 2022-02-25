import 'package:flutter/material.dart';

const int mediumScreenSize = 800;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;
  const ResponsiveWidget(
      {Key ? key, required this.largeScreen, required this.smallScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width >= mediumScreenSize) {
        return largeScreen;
      } else {
        return smallScreen;
      }
    });
  }
}
