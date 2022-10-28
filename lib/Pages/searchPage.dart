import 'package:flutter/material.dart';
import 'package:student/Widgets/searchBar.dart';
import 'package:student/main.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 26,
                    top: 23,
                  ),
                  child: IconButton(
                    icon: Image.asset(
                      "assets/images/studentAppLogo.png",
                      width: 31,
                      height: 50,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            SearchBar(),
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Image.asset("assets/images/search.png"),
            ),
          ],
        ),
      ),
    );
  }
}
