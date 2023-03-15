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
    String finalnput = userInput.replaceAll('x', '*');
    Expression expression = parser.parse(finalnput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Column(
          children: [
            const Text(
              'Calculator App',
              style: TextStyle(
                  color: Color(0xffffa00a),
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ),
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
                        answer != ""
                            ? "Result : ${answer.toString()}"
                            : answer.toString(),
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
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
                            });
                          }),
                      AppButton(
                          label: '8',
                          onPress: () {
                            setState(() {
                              userInput += '8';
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
                            });
                          }),
                      AppButton(
                          label: '0',
                          onPress: () {
                            setState(() {
                              userInput += '0';
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
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
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
                            });
                          }),
                      AppButton(
                          label: '5',
                          onPress: () {
                            setState(() {
                              userInput += '5';
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
                            });
                          }),
                      AppButton(
                          label: '6',
                          onPress: () {
                            setState(() {
                              userInput += '6';
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
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
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
                            });
                          }),
                      AppButton(
                          label: '2',
                          onPress: () {
                            setState(() {
                              userInput += '2';
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
                            });
                          }),
                      AppButton(
                          label: '3',
                          onPress: () {
                            setState(() {
                              userInput += '3';
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
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
                              if (userInput.contains('+') ||
                                  userInput.contains('-') ||
                                  userInput.contains('/') ||
                                  userInput.contains('x')) {
                                equalPress();
                              }
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
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                            });
                          }),
                      AppButton(
                          label: '=',
                          onPress: () {
                            setState(() {
                              equalPress();
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
