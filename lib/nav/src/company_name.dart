import 'package:flutter/material.dart';

class CompanyName extends StatelessWidget {
  const CompanyName({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Pi',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 16.0),
          ),
          Text(
            'pos',
            style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.white,
                fontSize: 16.0),
          ),
        ],
      )),
    );
  }
}
