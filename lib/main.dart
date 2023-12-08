import 'package:flutter/material.dart';
import 'Numbergenerator.dart';
import 'calculator_page.dart';
import 'greeting_page.dart';
import 'UnitConverterPage.dart';
import 'notes_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // creating the class my app to define the routes for navigating to different tabs
    // and defining the greeting page as initial route.
    return MaterialApp(
      title: 'My Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => GreetingPage(),
        '/calculator': (context) => CalculatorPage(),
        '/notes': (context) => NotesPage(),
        '/UnitConverter': (context) => UnitConverterPage(),
        '/Numbergenerator':(context) => Numbergenerator(),
      },
    );
  }
}