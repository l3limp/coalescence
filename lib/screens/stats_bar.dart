import 'package:flutter/material.dart';

class StatsBar extends StatefulWidget {
  const StatsBar({Key? key}) : super(key: key);

  @override
  State<StatsBar> createState() => _StatsBarState();
}

class _StatsBarState extends State<StatsBar>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1400));
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
            backgroundColor: Colors.black,
            body: Center(
                child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: _height * 0.25,
                  width: _width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFFFEF6FF),
                  ),
                ),
                Positioned(
                  top: -45.0,
                  child: SizedBox(
                    width: _width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/participants.png',
                          width: 90.0,
                          height: 90.0,
                        ),
                        Image.asset(
                          'assets/images/startups.png',
                          width: 90.0,
                          height: 90.0,
                        ),
                        Image.asset(
                          'assets/images/speakers.png',
                          width: 90.0,
                          height: 90.0,
                        ),
                        Image.asset(
                          'assets/images/professionals.png',
                          width: 90.0,
                          height: 90.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 65.0,
                  child: SizedBox(
                    width: _width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        columStructure(3600, "PARTICIPANTS"),
                        columStructure(340, "STARTUPS"),
                        columStructure(45, "SPEAKERS"),
                        columStructure(120, "PROFESSIONALS"),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          );
        });
  }

  Widget columStructure(int int, String text2) {
    animation = IntTween(begin: 0, end: int).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    return SizedBox(
      width: 110.0,
      child: Column(
        children: [
          Text(
            animation.value.toString(),
            style: const TextStyle(
                color: Color(0xFF8E70C6),
                fontSize: 30.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            text2,
            style: const TextStyle(color: Colors.black, fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
