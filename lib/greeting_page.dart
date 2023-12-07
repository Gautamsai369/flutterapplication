import 'package:flutter/material.dart';

class GreetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              Navigator.pushNamed(context, '/Numbergenerater');
            }, child: Text('Number Generator'))
          ],
        ),
      ),
    );
  }
}