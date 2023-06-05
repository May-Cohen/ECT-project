import 'package:flutter/material.dart';
import 'First exam explanation page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Setting Bar.dart';
import 'globals.dart' as globals;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
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
                  height: 450,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 167, 212, 249).withOpacity(0.8),
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
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Please enter your name',
                              hintStyle: TextStyle(
                                  color: Colors.black, fontFamily: 'Alkatra'),
                            ),
                            onChanged: (value1) {
                              globals.name = value1;
                            },
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: 350,
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Please enter your ID',
                              hintStyle: TextStyle(
                                  color: Colors.black, fontFamily: 'Alkatra'),
                            ),
                            onChanged: (value2) {
                              globals.iD = value2;
                            },
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: 350,
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Please enter your age',
                              hintStyle: TextStyle(
                                  color: Colors.black, fontFamily: 'Alkatra'),
                            ),
                            onChanged: (value3) {
                              globals.age = value3;
                            },
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: 350,
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Please enter your gender',
                              hintStyle: TextStyle(
                                  color: Colors.black, fontFamily: 'Alkatra'),
                            ),
                            onChanged: (value4) {
                              globals.gender = value4;
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
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
                              height: 50,
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
                                      fontSize: 35,
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
        ));
  }
}
