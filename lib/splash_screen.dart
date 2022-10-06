import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushNamed(context, '/home');
    });
    return Scaffold(
      body: Center(
          child: Lottie.network(
              'https://assets8.lottiefiles.com/private_files/lf30_9kdbftpx.json')),
    );
  }
}
