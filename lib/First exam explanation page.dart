import 'package:flutter/material.dart';
import 'First Exam.dart';

class FirstExplanationPage extends StatefulWidget {
  const FirstExplanationPage({super.key});

  @override
  State<FirstExplanationPage> createState() => _FirstExplanationPage();
}

class _FirstExplanationPage extends State<FirstExplanationPage> {
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "On the next screen, you will have the option to select left or right side:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        fontFamily: 'Alkatra'),
                  ),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 300,
                        child: Image.asset('assets/images/leftEx.png'),
                      ),
                      const SizedBox(
                        width: 300,
                      ),
                      SizedBox(
                        height: 300,
                        child: Image.asset('assets/images/rightEx.png'),
                      ),
                    ],
                  )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(width: 300),
                      Text(
                        "Left side",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 35,
                            fontFamily: 'Alkatra'),
                      ),
                      SizedBox(width: 400),
                      Text(
                        "Right side",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 35,
                            fontFamily: 'Alkatra'),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Sides()),
                      );
                    },
                    child: Container(
                      height: 60,
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
