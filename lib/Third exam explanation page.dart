import 'package:flutter/material.dart';
import 'package:project/Second%20Exam.dart';
import 'package:project/Third%20Exam.dart';

class ThirdExplanationPage extends StatefulWidget {
  const ThirdExplanationPage({super.key});

  @override
  State<ThirdExplanationPage> createState() => _ThirdExplanationPage();
}

class _ThirdExplanationPage extends State<ThirdExplanationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[600]?.withOpacity(0.5),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background2.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 75),
                  const Text(
                    "When the test begins, you will need to press the main button. \n A single light or three lights will turn on: \n -In the case of one light turning, you will need to click the button of that light. \n -In the case of three lights turning on at the same time, you will need to click the \n light's button that is farthest away from the other two lights. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        fontFamily: 'Alkatra'),
                  ),
                  const SizedBox(height: 30),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 250,
                        width: 380,
                        child: Image.asset('assets/images/example3.png'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 250,
                        width: 380,
                        child: Image.asset('assets/images/example2.png'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 250,
                        width: 380,
                        child: Image.asset('assets/images/example1.png'),
                      ),
                    ],
                  )),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LBulb()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue[300]?.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(
                              7.0,
                              7.0,
                            ),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Lets start',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.9),
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Alkatra'),
                        ),
                      ),
                    ),
                  ),
                ])));
  }
}
