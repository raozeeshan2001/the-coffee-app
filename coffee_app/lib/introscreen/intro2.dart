import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[200],
        child: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.network(
              'https://www.vinnisoft.com/wp-content/uploads/2022/06/Hire-Flutter-Developer.png',
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
