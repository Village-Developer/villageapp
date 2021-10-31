import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:village/frontend/Colors/Black100.dart';
import 'package:village/frontend/Intro/intro.dart';
import 'package:village/frontend/Login/login.dart';
import 'package:village/frontend/HomeScreen/home.dart';
import 'package:village/frontend/Registration/register.dart';

var d=true;

void main(){
  runApp(Village());
}

class Village extends StatelessWidget {
  const Village({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Village',
      theme: ThemeData(
        primarySwatch: primaryBlack,
        textTheme: GoogleFonts.creepsterTextTheme(),
      ),
        home:HomePage()
    );
  }
}
