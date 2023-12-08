import 'package:flutter/material.dart';

class GreetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // using scaffold created the greeting page with a single text box and image asset
    // added 4 elevated buttons for 4 different pages
    // on pressed event triggering to their respective pages
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to My Flutter App!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Image.asset('assets/welcome_image.jpg', width: 200, height: 200),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Calculator Page
                Navigator.pushNamed(context, '/calculator');
              },
              child: Text('Open Calculator'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Notes Page
                Navigator.pushNamed(context, '/notes');
              },
              child: Text('Open Notes'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Map Page
                Navigator.pushNamed(context, '/UnitConverter');
              },
              child: Text('Open Unit Converter'),
            ),
            ElevatedButton(onPressed: () {
              // Navigate to Number Generator
              Navigator.pushNamed(context, '/Numbergenerator');
            }, child: Text('Number Generator'))
          ],
        ),
      ),
    );
  }
}