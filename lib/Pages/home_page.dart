import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:student/Pages/addStudentPage.dart';
import 'package:student/Pages/searchPage.dart';

import '../Widgets/drawer.dart';
import '../Widgets/searchBar.dart';
import '../Widgets/studentCart.dart';

class HomePage extends StatelessWidget {
  final int age = 19;
  final String name = "Priyabrat";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8179FF),
        title: Text(
          "Hello User,\n Here's your classmates",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        toolbarHeight: 80,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 26,
                left: 13,
                right: 13,
              ),
              child: Container(
                // child: ListView(
                //   children: [

                //   ],
                // ),
                height: 615,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            StudentCart(
                              name: "Priyabrat Duarah",
                              age: 19,
                              isMale: true,
                            ),
                            StudentCart(
                              name: "Sristi",
                              age: 20,
                              isMale: false,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            StudentCart(
                              name: "Priyabrat Duarah",
                              age: 19,
                              isMale: true,
                            ),
                            StudentCart(
                              name: "Sristi",
                              age: 20,
                              isMale: false,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            StudentCart(
                              name: "Priyabrat Duarah",
                              age: 19,
                              isMale: true,
                            ),
                            StudentCart(
                              name: "Sristi",
                              age: 20,
                              isMale: false,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddStudentPage(),
              ),
            );
          },
          backgroundColor: Color(0xFF8179FF),
          child: Icon(Icons.add)),
    );
  }
}
