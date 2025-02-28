import 'package:coffee_app/introscreen/intro1.dart';
import 'package:coffee_app/introscreen/intro2.dart';
import 'package:coffee_app/introscreen/intro3.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [Intro1(), Intro2(), Intro3()],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          )
        ],
      ),
    );
  }
}
