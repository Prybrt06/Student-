import 'package:flutter/material.dart';

class StudentCart extends StatelessWidget {
  final String name;
  final int age;
  final bool isMale;

  const StudentCart({required this.name, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 13,
          ),
          height: 152,
          width: 154,
          decoration: BoxDecoration(
              color: Color(0xFFefeeff),
              borderRadius: BorderRadius.circular(11),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.25),
                  blurRadius: 4.0,
                  offset: Offset(0, 4),
                )
              ]),
        ),
        Text(
          "$name",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "$age years old",
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}
