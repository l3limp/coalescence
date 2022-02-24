import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[Color(0xFF264CAA), Color(0xFFCF85D7)],
    ).createShader(Rect.fromLTWH(50.0, 5250.0, 1050.0, 1050.0));
    return Scaffold(
        body: Container(
      height: _height,
      width: _width,
      child: Stack(children: [
        Positioned(
          top: _height * 0.25,
          child: SizedBox(
            width: _width,
            child: Column(children: [
              Text("COALESCENCE'22",
                  style: GoogleFonts.delaGothicOne(
                      fontSize: 90,
                      fontWeight: FontWeight.w400,
                      foreground: Paint()..shader = linearGradient)),
              Text("Inspire. Ideate. Innovate",
                  style: GoogleFonts.gothicA1(
                      color: Colors.indigo,
                      fontSize: 25,
                      fontWeight: FontWeight.w400))
            ]),
          ),
        ),
        Positioned(
          bottom: _height * 0.1,
          child: SizedBox(
            width: _width,
            child: Text("Website Launching Soon ...",
                textAlign: TextAlign.center,
                style: GoogleFonts.gothicA1(
                  color: Colors.indigo,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                )),
          ),
        )
      ]),
    ));
  }
}
