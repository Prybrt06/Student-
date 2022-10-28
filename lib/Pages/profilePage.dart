import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    int frndCount = 13;
    int clsFrndCount = 3;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 180,
                height: 184,
                child: Image.asset("assets/images/maleAvatar.png"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Text(
                  "Priyabrat Duarah",
                  style: TextStyle(
                    color: Color(0xFF6C63FF),
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 25,
                ),
                child: Row(
                  children: [
                    Spacer(),
                    Spacer(),
                    Container(
                      width: 138,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Color(0xFF6C63FF).withOpacity(0.08),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFF6C63FF).withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("$frndCount friends"),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 138,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Color(0xFF6C63FF).withOpacity(0.08),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFF6C63FF).withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("$clsFrndCount friends"),),
                    ),
                    Spacer(),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
