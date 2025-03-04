import 'package:flutter/material.dart';

class Endchild extends StatefulWidget {
  final child;
  Endchild({super.key, required this.child});

  @override
  State<Endchild> createState() => _EndchildState();
}

class _EndchildState extends State<Endchild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: widget.child,
      ),
    );
  }
}
