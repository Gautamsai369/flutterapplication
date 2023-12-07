import 'package:flutter/material.dart';
import 'Numbergenerater.dart';
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
    return MaterialApp(
      title: 'My Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => GreetingPage(),
        '/calculator': (context) => CalculatorPage(),
        '/notes': (context) => NotesPage(),
        '/UnitConverter': (context) => UnitConverterPage(),
        '/Numbergenerater':(context) => Numbergenerater(),
      },
    );
  }
}