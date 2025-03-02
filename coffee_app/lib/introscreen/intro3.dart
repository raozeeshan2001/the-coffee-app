import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[200],
        child: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.network(
              'https://cdn-eebof.nitrocdn.com/SuQxSbuPHXJqWEoDMONJVBEiJORNOLul/assets/images/optimized/rev-9bf04d9/www.tftus.com/wp-content/uploads/2021/02/Flutter-1.png',
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
