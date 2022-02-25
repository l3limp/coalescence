import 'package:coalescence/screens/large_screen/large_home.dart';
import 'package:coalescence/screens/small_screen/small_home.dart';
import 'package:coalescence/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
          largeScreen: LargeHome(), smallScreen: SmallHome()),
    );
  }
}