// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pi_pos/Dashboard/dash_board.dart';
import '../nav/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [const NavBar(), const DashBorad()],
        ),
      ),
    );
  }
}
