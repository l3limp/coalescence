import 'package:coalescence/screens/stats_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    final Shader linearGradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xFF264CAA), Color(0xFFCF85D7)],
    ).createShader(const Rect.fromLTWH(50.0, 100.0, 200.0, 250.0));

    return Scaffold(
        body: SizedBox(
      height: _height,
      width: _width,
      child: Stack(children: [
        SizedBox(
          height: _height,
          width: _width,
          child: Image.asset(
            "assets/images/aaa.png",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: _height * 0.3,
          child: SizedBox(
            width: _width,
            child: Container(
              decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.white, blurRadius: 150)]),
              child: Column(children: [
                Text("COALESCENCE'22",
                    style: TextStyle(
                        fontSize: 90,
                        fontFamily: "Dela",
                        fontWeight: FontWeight.w400,
                        foreground: Paint()..shader = linearGradient)),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText("Website Launching Soon ...",
                        speed: const Duration(milliseconds: 80),
                        textStyle: const TextStyle(
                            fontFamily: "Goth",
                            color: Colors.indigo,
                            fontSize: 25,
                            fontWeight: FontWeight.w400))
                  ],
                  isRepeatingAnimation: false,
                ),
              ]),
            ),
          ),
        ),
        Positioned(
          bottom: _height * 0.05,
          child: SizedBox(
            width: _width,
            height: _height * 0.3,
            child: const StatsBar(),
          ),
        ),
      ]),
    ));
  }
}
