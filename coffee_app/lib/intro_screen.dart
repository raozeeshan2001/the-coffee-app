import 'package:coffee_app/introscreen/intro1.dart';
import 'package:coffee_app/introscreen/intro2.dart';
import 'package:coffee_app/introscreen/intro3.dart';
import 'package:coffee_app/introscreen/timeline_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                currentindex = value;
              });
            },
            controller: _controller,
            children: [Intro1(), Intro2(), Intro3()],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text('skip')),

                  SmoothPageIndicator(controller: _controller, count: 3),
                  //next
                  GestureDetector(
                      onTap: () {
                        if (currentindex == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TimelineScreen()));
                          print('done');
                        } else {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        }
                      },
                      child: Text(currentindex == 2 ? 'done' : 'next')),
                ]),
          )
        ],
      ),
    );
  }
}
