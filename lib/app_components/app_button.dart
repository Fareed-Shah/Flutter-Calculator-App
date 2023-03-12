import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  const AppButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        // width: 50,
        //oxffffa00a
        decoration: const BoxDecoration(
            color: Color(0xffa5a5a5), shape: BoxShape.circle),
        child: Center(
            child: Text(label.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.black))),
      ),
    );
  }
}
