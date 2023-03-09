import 'package:catelog/pages/home_page.dart';
import 'package:catelog/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

//import 'home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //context hme batata h ki kon si chiz ki kha pr kya location h h jaise home page  us tree me kaha pr h
   // int days=30;
    //String name="codepur";
    return MaterialApp(
     // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily:GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme().
        ),     
      darkTheme: ThemeData(
        brightness: Brightness.dark,
       // primarySwatch: Colors.green,
      ),
      //initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        "/home" :(context) => HomePage(),
        "/login" :(context) => LoginPage(),
      },
    );
  } 
}
