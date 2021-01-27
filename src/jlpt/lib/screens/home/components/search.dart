import 'package:flutter/material.dart';

/// Home Screen Search Box
class SearchBox extends StatelessWidget {
  final ValueChanged onChanged;

  const SearchBox({Key key, this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: "Tìm",
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
