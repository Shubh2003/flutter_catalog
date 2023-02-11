import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_catalog/pages/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      initialRoute: "/Login",
      routes: {
        "/" : (context) => Loginpage(), 
        "/home" : (context) =>  HomePage(), 
        "/Login": (context) => Loginpage()
      },
    );
  }
}
