import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeIconsBar extends StatelessWidget {
  const LargeIconsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: _height * 0.07,
            width: _width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xFFDFC1F7).withOpacity(0.4),
            ),
          ),
          SizedBox(
            width: _width * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.white, blurRadius: 52)
                  ]),
                  child: IconButton(
                      onPressed: () {
                        _launchURL("https://www.instagram.com/celbitsgoa/");
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.black,
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.white, blurRadius: 40)
                  ]),
                  child: IconButton(
                      onPressed: () {
                        _launchURL(
                            "https://www.linkedin.com/company/celbitsgoa/");
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromARGB(255, 15, 87, 146),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.white, blurRadius: 40)
                  ]),
                  child: IconButton(
                      onPressed: () {
                        _launchURL("https://www.youtube.com/c/CoalescenceBITS");
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.red,
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.white, blurRadius: 40)
                  ]),
                  child: IconButton(
                      onPressed: () {
                        _launchURL("https://twitter.com/celbitsgoa");
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                      )),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
