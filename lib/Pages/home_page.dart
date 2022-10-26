import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int age = 19;
  final String name = "Priyabrat";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: 27,
            top: 34,
          ),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.5),
              color: Color(0xFF8179FF)),
        ),
      ),
    );
  }
}
