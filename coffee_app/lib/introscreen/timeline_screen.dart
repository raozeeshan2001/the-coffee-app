import 'package:coffee_app/widgets/endchild.dart';
import 'package:coffee_app/widgets/timelines.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: ListView(children: [
          Timelines(
              isfirst: true,
              islast: false,
              endchild:
                  Endchild(child: Center(child: Text('Meeting Schedule')))),
          Timelines(
              isfirst: false,
              islast: false,
              endchild: Endchild(child: Center(child: Text('Order Time')))),
          Timelines(
              isfirst: false,
              islast: true,
              endchild: Endchild(child: Center(child: Text('Delivery Point')))),
        ]),
      ),
    );
  }
}
