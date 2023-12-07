import 'dart:math';
import 'package:flutter/material.dart';

class Numbergenerater extends StatefulWidget {
  @override
  _NumberGeneratorPageState createState() => _NumberGeneratorPageState();
}

class _NumberGeneratorPageState extends State<Numbergenerater> {
  TextEditingController _minController = TextEditingController();
  TextEditingController _maxController = TextEditingController();
  int generatedNumber = 0;

  void generateNumber() {
    int min = int.tryParse(_minController.text) ?? 0;
    int max = int.tryParse(_maxController.text) ?? 100;

    // Ensure min is less than or equal to max
    if (min > max) {
      int temp = min;
      min = max;
      max = temp;
    }

    setState(() {
      generatedNumber = Random().nextInt(max - min + 1) + min;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Generator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _minController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Minimum Value'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _maxController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Maximum Value'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                generateNumber();
              },
              child: Text('Generate Number'),
            ),
            SizedBox(height: 20),
            Text('Generated Number: $generatedNumber'),
          ],
        ),
      ),
    );
  }
}