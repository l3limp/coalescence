import 'package:coalescence/widgets/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Layout(),
      },
    ),
  );
}
