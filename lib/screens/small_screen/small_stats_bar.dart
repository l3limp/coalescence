import 'package:flutter/material.dart';

class SmallStatsBar extends StatefulWidget {
  const SmallStatsBar({Key? key}) : super(key: key);

  @override
  _SmallStatsBarState createState() => _SmallStatsBarState();
}

class _SmallStatsBarState extends State<SmallStatsBar>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: _height * 0.1,
                  width: _width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFFDFC1F7).withOpacity(0.4),
                  ),
                ),
                Positioned(
                  top: -20.0,
                  child: SizedBox(
                    width: _width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/participants.png',
                          width: 35.0,
                          height: 35.0,
                        ),
                        Image.asset(
                          'assets/images/startups.png',
                          width: 35.0,
                          height: 35.0,
                        ),
                        Image.asset(
                          'assets/images/speakers.png',
                          width: 35.0,
                          height: 35.0,
                        ),
                        Image.asset(
                          'assets/images/professionals.png',
                          width: 35.0,
                          height: 35.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 35.0,
                  child: SizedBox(
                    width: _width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                          child: columnStructure(3600, "PARTICIPANTS"),
                        ),
                        columnStructure(340, "STARTUPS"),
                        columnStructure(45, "SPEAKERS"),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: columnStructure(120, "PROFESSIONALS"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          );
        });
  }

  Widget columnStructure(int int, String text2) {
    animation = IntTween(begin: 0, end: int).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    return Container(
      width: 55.0,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.white, spreadRadius: 10, blurRadius: 80)
      ]),
      child: Column(
        children: [
          Text(
            animation.value.toString(),
            style: const TextStyle(
                color: Color(0xFF8E70C6),
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            text2,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 6.0,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
