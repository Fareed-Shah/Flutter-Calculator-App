import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Color btnColor;
  final VoidCallback onPress;
  const AppButton(
      {super.key,
      required this.label,
      required this.onPress,
      this.btnColor = const Color(0xffa5a5a5)});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: GestureDetector(
          onTap: onPress,
          child: Container(
            height: 70,
            // width: 50,
            //oxffffa00a
            decoration: BoxDecoration(color: btnColor, shape: BoxShape.circle),
            child: Center(
                child: Text(label.toString(),
                    style: const TextStyle(
                        fontFamily: 'TiltWarp Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white))),
          ),
        ),
      ),
    );
  }
}
