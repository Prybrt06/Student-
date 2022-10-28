import 'package:flutter/material.dart';
import 'package:student/Pages/home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Spacer(),
            Row(
              children: [
                Spacer(),
                Image.asset(
                  "assets/images/studentAppLogo.png",
                  height: 82,
                  width: 59,
                ),
                Text(
                  "tudents",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF6C63FF),
                  ),
                ),
                Spacer(),
                Spacer(),
              ],
            ),
            Image.asset("assets/images/login.png"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: Text("Login"),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
