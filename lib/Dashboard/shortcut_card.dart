

import 'package:flutter/material.dart';



class ShortCutCards extends StatefulWidget {
  final  Color color;
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
      onEnter: (value){
        setState(() {
          hovered = true;
        });
      },
      onExit: (value){

        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 275),
        height: hovered ? 160.0 : 155.0 ,
        width: hovered ? 200.0 : 195.0,
        decoration: BoxDecoration(
          color: hovered ? widget.color : Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.black)
          
          
          

        ),
        ),
    );
  }
}