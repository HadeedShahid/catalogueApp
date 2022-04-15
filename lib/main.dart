import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:testapp/login_page.dart';
import 'package:testapp/utils/routes.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: "/login" ,
      routes: {
        "/" : (context) => loginPage(),
        Routes.homeRoute : (context) => homepage(),
        Routes.loginRoute : (context) => loginPage(),
      } ,
    );


  }
}