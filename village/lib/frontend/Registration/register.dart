import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Register",
          style: TextStyle(fontSize: 28, color: Color(0xeba81217)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  label: Text("Username",style: TextStyle(fontSize: 16),),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  label: Text("Password",style: TextStyle(fontSize: 16),),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  label: Text("Re-Password",style: TextStyle(fontSize: 16),),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  label: Text("Email",style: TextStyle(fontSize: 16),),
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
                          "Confirm",
                          style: TextStyle(fontSize: 24),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
