import 'package:flutter/material.dart';
import 'package:student/Pages/profilePage.dart';

class StudentCart extends StatelessWidget {
  final String name;
  final int age;
  final bool isMale;

  const StudentCart(
      {required this.name, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(
              Name: name,
              frndCount: 13,
              clsFrndCount: 3,
              isMale: isMale,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 13,
            ),
            height: 152,
            width: 154,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(76),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.25),
                  blurRadius: 4.0,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: (isMale)
                ? Image.asset("assets/images/maleAvatar.png")
                : Image.asset("assets/images/femaleAvatar.png"),
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
      ),
    );
  }
}
