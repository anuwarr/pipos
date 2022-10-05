// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ShortCutCards extends StatefulWidget {
  final Color color;
  final String statName;
  final String totalStat;
  const ShortCutCards({
    required this.color,
    required this.statName,
    required this.totalStat,
  });
  //const StatCard({super.key});

  @override
  State<ShortCutCards> createState() => _StatCardState();
}

class _StatCardState extends State<ShortCutCards> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: hovered ? 160.0 : 155.0,
        width: hovered ? 200.0 : 195.0,
        decoration: BoxDecoration(
            color: hovered ? widget.color : Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.black)),
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 13.0,
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
                  child: Icon(
                    Icons.shopping_cart,
                    color: !hovered ? Colors.grey : Colors.black,
                    size: 25,
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
