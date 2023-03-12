import 'package:calculator_app/app_components/app_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: const [
                AppButton(label: 'AC'),
                AppButton(label: '+/-'),
                AppButton(label: '%'),
                AppButton(label: '/')
              ],
            ),
          ],
        ),
      )),
    );
  }
}
