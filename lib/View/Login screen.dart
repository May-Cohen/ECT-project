import 'package:flutter/material.dart';
import 'package:project/View/First%20exam%20explanation%20screen.dart';
import 'package:project/View/Setting Bar.dart';
import 'package:project/Model/globals.dart' as globals;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final RegExp alphaB = RegExp('[a-zA-Z]');
  static final RegExp numbers = RegExp('[0-9]');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SettingBar(),
        appBar: AppBar(
          backgroundColor: Colors.blue[600]?.withOpacity(0.5),
          leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.settings));
            },
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background1.png"),
                fit: BoxFit.cover),
          ),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  Text(
                    "Login page",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 84, 172, 245).withOpacity(0.9),
                      fontWeight: FontWeight.w900,
                      shadows: const <Shadow>[
                        Shadow(
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                      fontSize: 90,
                      fontFamily: 'Alkatra',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 460,
                    width: 400,
                    decoration: BoxDecoration(
                      color:
                          Color.fromARGB(255, 167, 212, 249).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 350,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Please enter your name',
                                hintStyle: TextStyle(
                                    color: Colors.black, fontFamily: 'Alkatra'),
                              ),
                              validator: (temp1) {
                                if (temp1!.isEmpty) {
                                  return "Name Required";
                                } else if (!(alphaB.hasMatch(temp1))) {
                                  return "Only Alphabets are allowed in the name field";
                                }
                              },
                              onChanged: (value1) {
                                globals.name = value1;
                              },
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 350,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Please enter your ID',
                                hintStyle: TextStyle(
                                    color: Colors.black, fontFamily: 'Alkatra'),
                              ),
                              validator: (temp2) {
                                if (temp2!.isEmpty) {
                                  return "ID Required";
                                } else if (temp2.length != 9) {
                                  return "The ID number should include 9 characters";
                                } else if (!(numbers.hasMatch(temp2))) {
                                  return "Only numeric values are allowed in the name field";
                                }
                              },
                              onChanged: (value2) {
                                globals.iD = value2;
                              },
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 350,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Please enter your age',
                                hintStyle: TextStyle(
                                    color: Colors.black, fontFamily: 'Alkatra'),
                              ),
                              validator: (temp3) {
                                if (temp3!.isEmpty) {
                                  return "Age Required";
                                } else if (!(numbers.hasMatch(temp3))) {
                                  return "Only numeric values are allowed in the age field";
                                }
                              },
                              onChanged: (value3) {
                                globals.age = value3;
                              },
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 350,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Please enter your gender',
                                hintStyle: TextStyle(
                                    color: Colors.black, fontFamily: 'Alkatra'),
                              ),
                              validator: (temp4) {
                                if (temp4!.isEmpty) {
                                  return "Gender Required";
                                }
                              },
                              onChanged: (value4) {
                                globals.gender = value4;
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FirstExplanationPage()),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 123, 191, 247)
                                      .withOpacity(0.9),
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
                                    'Login',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                        fontSize: 29,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Alkatra'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
