import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String Name;
  final int frndCount;
  final int clsFrndCount;
  final bool isMale;
  ProfilePage({
    @required this.Name = "Hello",
    required this.frndCount,
    required this.clsFrndCount,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 180,
                height: 184,
                child: (isMale)? Image.asset("assets/images/maleAvatar.png") : Image.asset("assets/images/femaleAvatar.png"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Text(
                  "$Name",
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
                      child: Center(
                        child: Text("$clsFrndCount friends"),
                      ),
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
