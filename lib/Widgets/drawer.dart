import 'package:flutter/material.dart';
import 'package:student/Pages/profilePage.dart';
import 'package:student/Pages/searchPage.dart';

import 'drawerButtonWidget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF8179FF).withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.only(
            left: 26,
            right: 52,
            top: 77,
            bottom: 47,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfilePage(),
                          ),
                        );
                      },
                      child: Text(
                        "Priyabrat Duarah",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: DrawerButton(
                  button: "Profile",
                  textColor: Colors.black,
                ),
              ),
              DrawerButton(
                button: "Settings",
                textColor: Colors.black,
              ),
              DrawerButton(
                button: "About us",
                textColor: Colors.black,
              ),
              DrawerButton(
                button: "Contact us",
                textColor: Colors.black,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
