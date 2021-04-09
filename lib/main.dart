import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navegacao_luciana/screens/home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meus Widgets",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 125, 145),
          fontFamily: 'Mukutu',
          textTheme: GoogleFonts.muktaMaheeTextTheme(
            Theme.of(context).primaryTextTheme,
          )
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
