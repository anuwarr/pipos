// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Expanded(
        child: Center(
          child: Container(
            height: 633,
            width: 873,
            decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0)
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset('lib/images/logo.png'),
                const SizedBox(
                  height: 20,
                ),
                // ignore: prefer_const_constructors
                Container(
                    padding: const EdgeInsets.only(right: 420),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    )),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 200),
                  child: Container(
                    child: const TextField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        label: Text('E-mail'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 200),
                  child: Container(
                    child: const TextField(
                      obscureText: true,

                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 275),
                  child: SizedBox(
                    height: 45,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: const Text('Login'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                const Text('Powerd By: PiNetworks')
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
