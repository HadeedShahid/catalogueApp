import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:testapp/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo,
      fontFamily: GoogleFonts.lato().fontFamily,

      ),
      initialRoute: "/login" ,
      routes: {
        "/" : (context) => loginPage(),
        "/home" : (context) => homepage(),
        "/login" : (context) => loginPage(),
      } ,
    );


  }
}