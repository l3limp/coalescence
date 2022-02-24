import 'package:coalescence/screens/stats_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const StatsBar(),
      },
    ),
  );
}
