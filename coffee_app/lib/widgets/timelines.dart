import 'package:coffee_app/widgets/endchild.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Timelines extends StatelessWidget {
  final bool isfirst;

  final bool islast;
  final endchild;

  const Timelines(
      {super.key,
      required this.isfirst,
      required this.islast,
      required this.endchild});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
          isFirst: isfirst,
          isLast: islast,
          beforeLineStyle: LineStyle(color: Colors.purple),
          indicatorStyle: IndicatorStyle(
              width: 40,
              iconStyle: IconStyle(iconData: Icons.done, color: Colors.white),
              color: Colors.purple),
          endChild: endchild),
    );
  }
}
