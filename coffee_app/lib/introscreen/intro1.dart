import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[200],
        child: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.network(
              'https://www.rlogical.com/wp-content/uploads/2023/04/flutter_top_banner.webp',
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
