import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:village/frontend/Colors/Black100.dart';
import 'package:village/frontend/Login/login.dart';

var log = false;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: primaryBlack,
              ),
              child: Text(
                "data",
                style: TextStyle(color: Color(0xeba81217)),
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 28, color: Color(0xeba80217)),
              ),
              onTap: () {
                log == true
                    ? Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      })) //Navigator
                    : Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                        return const LoginPage();
                      })); //Navigator
              },
            ),
            ListTile(
              title: const Text(
                'Setting',
                style: TextStyle(fontSize: 28, color: Color(0xeba80217)),
              ),
              onTap: () {
                log
                    ? null
                    : Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                        return const LoginPage();
                      })); //Navigator
              },
            ),
          ],
        ),
      ),

      backgroundColor: Colors.grey,
    );
  }
}
