import 'package:flutter/material.dart';

class Selector extends StatelessWidget {
  final String text;
  const Selector({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFFF62046),
              borderRadius: BorderRadius.circular(25)),
          width: MediaQuery.of(context).size.width - 20,
          child: Center(
            child: Padding(
                padding: EdgeInsets.all(14),
                child: Text(
                  "${text}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32, color: Color(0xFFFFFFFF)),
                )),
          ),
        ));
  }
}
