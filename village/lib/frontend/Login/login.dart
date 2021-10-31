import 'package:flutter/material.dart';
import 'package:village/frontend/Registration/register.dart';

import '../HomeScreen/home.dart';

var log = false;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Village",
          style: TextStyle(fontSize: 28, color: Color(0xeba81217)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset("lib/image/login.png"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Column(
                    children: [
                      const Text(
                        "Username",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xeba81217)),
                      ),
                      TextFormField(),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      const Text(
                        "Password",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xeba81217)),
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.black45),
                        obscureText: true,
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            //Check from Login Controller
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 24),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          child: const Text(
                            "Register?",
                            style: TextStyle(fontSize: 14),
                          ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return RegisterPage();
                              }));
                        },
                      ),
                      const Text(" || "),
                      InkWell(
                        child: const Text(
                          "Forget?",
                          style: TextStyle(fontSize: 14),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
