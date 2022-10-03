
import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text('Today Sales'),
            SizedBox(
              height: 20.0,
            ),
            Text('MVR 200,000')
          ],
        )
      ],
    );
  }
}