import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountButton extends StatelessWidget {
  String text;
  CountButton({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Container(
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
        )),
        width: 125,
        height: 50,
        decoration: BoxDecoration(
            color: Color(0xFFFFAB40), borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
