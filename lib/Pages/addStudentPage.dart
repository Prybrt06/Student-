import 'package:flutter/material.dart';

class AddStudentPage extends StatelessWidget {
  const AddStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEBFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 100,
          ),
          child: Column(
            children: [
              AddStudentTextField(
                type: "Name",
              ),
              AddStudentTextField(type: "Age"),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Submit",
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF6C63FF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddStudentTextField extends StatelessWidget {
  final String type;

  const AddStudentTextField({required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 45,
      width: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Color(0xFF8179FF).withOpacity(0.8),
        ),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          bottom: 4,
        ),
        child: TextField(
          autocorrect: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "$type",
          ),
        ),
      ),
    );
  }
}
