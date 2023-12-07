import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _input = '0';
  String _output = '0';
  String _operand = '';
  double _num1 = 0.0;

  void _onDigitPressed(String digit) {
    setState(() {
      if (_input == '0') {
        _input = digit;
      } else {
        _input += digit;
      }
    });
  }

  void _onOperationPressed(String operation) {
    setState(() {
      _operand = operation;
      _num1 = double.parse(_input);
      _input = '0';
    });
  }

  void _onEqualPressed() {
    setState(() {
      double num2 = double.parse(_input);
      switch (_operand) {
        case '+':
          _output = (_num1 + num2).toString();
          break;
        case '-':
          _output = (_num1 - num2).toString();
          break;
        case '*':
          _output = (_num1 * num2).toString();
          break;
        case '/':
          _output = (_num1 / num2).toString();
          break;
        default:
          _output = '0';
      }
      _input = '0';
      _operand = '';
    });
  }

  void _onClearPressed() {
    setState(() {
      _input = '0';
      _output = '0';
      _operand = '';
      _num1 = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _output,
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildOperationButton('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildOperationButton('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildOperationButton('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton('0'),
              _buildButton('.'),
              _buildEqualButton(),
              _buildOperationButton('+'),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _onClearPressed,
            child: Text('Clear'),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () => _onDigitPressed(text),
      child: Text(text),
    );
  }

  Widget _buildOperationButton(String text) {
    return ElevatedButton(
      onPressed: () => _onOperationPressed(text),
      child: Text(text),
    );
  }

  Widget _buildEqualButton() {
    return ElevatedButton(
      onPressed: _onEqualPressed,
      child: Text('='),
    );
  }
}
