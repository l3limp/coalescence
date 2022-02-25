import 'package:coalescence/screens/large_screen/large_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(),
      },
    ),
  );
}
