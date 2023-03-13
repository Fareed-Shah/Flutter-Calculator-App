import 'package:calculator_app/app_components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userInput = '';
  var answer = '';

  void equalPress() {
    Parser parser = Parser();
    Expression expression = parser.parse(userInput);
    ContextModel contextModel = ContextModel();

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userInput.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        answer.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      AppButton(
                          label: 'AC',
                          onPress: () {
                            setState(() {
                              userInput = '';
                              answer = '';
                            });
                          }),
                      AppButton(
                          label: '+/-',
                          onPress: () {
                            setState(() {
                              userInput += '+/-';
                            });
                          }),
                      AppButton(
                          label: '%',
                          onPress: () {
                            setState(() {
                              userInput += '%';
                            });
                          }),
                      AppButton(
                          label: '/',
                          onPress: () {
                            setState(() {
                              userInput += '/';
                            });
                          },
                          btnColor: const Color(0xffffa00a)),
                    ],
                  ),
                  Row(
                    children: [
                      AppButton(
                          label: '7',
                          onPress: () {
                            setState(() {
                              userInput += '7';
                            });
                          }),
                      AppButton(
                          label: '8',
                          onPress: () {
                            setState(() {
                              userInput += '8';
                            });
                          }),
                      AppButton(
                          label: '0',
                          onPress: () {
                            setState(() {
                              userInput += '0';
                            });
                          }),
                      AppButton(
                          label: 'x',
                          onPress: () {
                            setState(() {
                              userInput += 'x';
                            });
                          },
                          btnColor: const Color(0xffffa00a)),
                    ],
                  ),
                  Row(
                    children: [
                      AppButton(
                          label: '4',
                          onPress: () {
                            setState(() {
                              userInput += '4';
                            });
                          }),
                      AppButton(
                          label: '5',
                          onPress: () {
                            setState(() {
                              userInput += '5';
                            });
                          }),
                      AppButton(
                          label: '6',
                          onPress: () {
                            setState(() {
                              userInput += '6';
                            });
                          }),
                      AppButton(
                          label: '-',
                          onPress: () {
                            setState(() {
                              userInput += '-';
                            });
                          },
                          btnColor: const Color(0xffffa00a)),
                    ],
                  ),
                  Row(
                    children: [
                      AppButton(
                          label: '1',
                          onPress: () {
                            setState(() {
                              userInput += '1';
                            });
                          }),
                      AppButton(
                          label: '2',
                          onPress: () {
                            setState(() {
                              userInput += '2';
                            });
                          }),
                      AppButton(
                          label: '3',
                          onPress: () {
                            setState(() {
                              userInput += '3';
                            });
                          }),
                      AppButton(
                          label: '+',
                          onPress: () {
                            setState(() {
                              userInput += '+';
                            });
                          },
                          btnColor: const Color(0xffffa00a)),
                    ],
                  ),
                  Row(
                    children: [
                      AppButton(
                          label: '0',
                          onPress: () {
                            setState(() {
                              userInput += '0';
                            });
                          }),
                      AppButton(
                          label: '.',
                          onPress: () {
                            setState(() {
                              userInput += '.';
                            });
                          }),
                      AppButton(
                          label: 'DEL',
                          onPress: () {
                            setState(() {
                              userInput += 'DEL';
                            });
                          }),
                      AppButton(
                          label: '=',
                          onPress: () {
                            setState(() {
                              userInput += '=';
                            });
                          },
                          btnColor: const Color(0xffffa00a)),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     RichText(
                  //         text: const TextSpan(children: [
                  //       TextSpan(
                  //         text: 'Calculator App Design By :',
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //       TextSpan(
                  //         text: ' Fareed Shah',
                  //         style: TextStyle(
                  //             fontSize: 25.0,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold),
                  //       )
                  //     ])),
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
