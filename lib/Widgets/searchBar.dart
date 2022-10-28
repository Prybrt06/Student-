import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 34,
      ),
      padding: EdgeInsets.only(
        left: 39,
        right: 39,
        bottom: 4,
      ),
      width: 339,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Color(0xFF8179FF).withOpacity(0.5),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          border: InputBorder.none,
        ),
      ),
    );
  }
}