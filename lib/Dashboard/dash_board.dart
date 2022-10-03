import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_time_format/date_time_format.dart';

class DashBorad extends StatefulWidget {
  const DashBorad({super.key});

  @override
  State<DashBorad> createState() => _DashBoradState();
}

class _DashBoradState extends State<DashBorad> {
  final datTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 25.0),
              child: Text(
                'Welcome Back Nadey Bi',
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 25.0),
              child: Text(datTime.format(AmericanDateFormats.dayOfWeek)),
            )
          ],
        ),
      ),
    );
  }
}
