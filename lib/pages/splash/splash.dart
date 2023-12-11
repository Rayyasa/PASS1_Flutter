// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Image.asset('assets/Frame 1.png'),
          SizedBox(height: 20,),
          Text('')
        ],),
      ),
    );
  }
}