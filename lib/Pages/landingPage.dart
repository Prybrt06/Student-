import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:student/Pages/home_page.dart';

class LandingPage extends StatelessWidget {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn googleSignIn = new GoogleSignIn();

  // Future<User> _handleSignIn() async {
  //   GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  //   GoogleSignInAuthentication gSA = await googleSignInAccount!.authentication;

  //   final AuthCredential credential = GoogleAuthProvider.credential(
  //     accessToken: gSA.accessToken,
  //     idToken: gSA.idToken,
  //   );

  //   final User user = (await _auth.signInWithCredential(credential)) as User;

  //   return user;
  // }

  LandingPage({super.key});

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
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6C63FF),
              ),
              child: Text("Sign In"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6C63FF),
              ),
              child: Text("Sign Up"),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
