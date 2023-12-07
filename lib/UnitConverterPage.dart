import 'package:flutter/material.dart';

class UnitConverterPage extends StatefulWidget {
  @override
  _UnitConverterPageState createState() => _UnitConverterPageState();
}

class _UnitConverterPageState extends State<UnitConverterPage> {
  double inputValue = 0.0;
  double convertedValue = 0.0;

  // Conversion factor: 1 meter = 3.28084 feet
  double metersToFeet(double meters) {
    return meters * 3.28084;
  }

  void convert() {
    setState(() {
      convertedValue = metersToFeet(inputValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Length in Meters'),
              onChanged: (value) {
                setState(() {
                  inputValue = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                convert();
              },
              child: Text('Convert'),
            ),
            SizedBox(height: 20),
            Text('Converted Length: $convertedValue Feet'),
          ],
        ),
      ),
    );
  }
}