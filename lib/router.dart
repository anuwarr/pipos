import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:pi_pos/pages/home_page.dart';
import 'package:pi_pos/splash_screen.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const SplashScreen();
  });
  static final Handler _mainHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const HomePage();
  });

  static void setupRouter() {
    router.define('/', handler: _splashHandler);
    router.define('/home',
        handler: _mainHandler, transitionType: TransitionType.fadeIn);
  }
}
