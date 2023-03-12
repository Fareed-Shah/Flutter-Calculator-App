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
                AppButton(label: '/', btnColor: Color(0xffffa00a)),
              ],
            ),
            Row(
              children: const [
                AppButton(label: '7'),
                AppButton(label: '8'),
                AppButton(label: '0'),
                AppButton(label: 'x', btnColor: Color(0xffffa00a)),
              ],
            ),
            Row(
              children: const [
                AppButton(label: '4'),
                AppButton(label: '5'),
                AppButton(label: '6'),
                AppButton(label: '-', btnColor: Color(0xffffa00a)),
              ],
            ),
            Row(
              children: const [
                AppButton(label: '1'),
                AppButton(label: '2'),
                AppButton(label: '3'),
                AppButton(label: '+', btnColor: Color(0xffffa00a)),
              ],
            ),
            Row(
              children: const [
                AppButton(label: '0'),
                AppButton(label: '.'),
                AppButton(label: 'DEL'),
                AppButton(label: '=', btnColor: Color(0xffffa00a)),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
