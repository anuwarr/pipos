// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class NavIcon extends StatefulWidget {
  const NavIcon({super.key});

  @override
  State<NavIcon> createState() => _NavIconState();
}

class _NavIconState extends State<NavIcon> {
  List<bool> selected = [true, false, false, false, false];

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: Column(
        children: [
          NavBarItems(
            active: selected[0],
            icon: Feather.home,
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          NavBarItems(
            active: selected[1],
            icon: Feather.user,
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItems(
            active: selected[2],
            icon: Feather.shopping_cart,
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItems(
            active: selected[3],
            icon: Feather.settings,
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
        ],
      ),
    );
  }
}

class NavBarItems extends StatefulWidget {
  final IconData icon;
  final Function touched;
  final bool active;
  const NavBarItems(
      {required this.icon, required this.touched, required this.active});

  @override
  State<NavBarItems> createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.touched();
        },
        splashColor: Colors.white,
        hoverColor: Colors.white12,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: [
              SizedBox(
                height: 60.0,
                width: 80.0,
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 475),
                      height: 35.0,
                      width: 5.0,
                      decoration: BoxDecoration(
                        color:
                            widget.active ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Icon(
                        widget.icon,
                        color: widget.active ? Colors.white : Colors.white54,
                        size: 19.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
