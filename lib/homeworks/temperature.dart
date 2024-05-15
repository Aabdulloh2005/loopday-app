import 'package:flutter/material.dart';

class TemperaturaApp extends StatefulWidget {
  @override
  _TemperaturaAppState createState() => _TemperaturaAppState();
}

class _TemperaturaAppState extends State<TemperaturaApp> {
  late double value;
  String _convertedValue = '';
  bool _isCelsius = true;

  final TextEditingController _controller = TextEditingController();

  void _convertTemperature() {
    setState(() {
      double inputValue = double.tryParse(_controller.text) ?? 0;
      if (_isCelsius) {
        // Convert Celsius to Fahrenheit
        double fahrenheitValue = (inputValue * 9 / 5) + 32;
        _convertedValue = '${fahrenheitValue.toStringAsFixed(2)} °F';
      } else {
        // Convert Fahrenheit to Celsius
        double celsiusValue = (inputValue - 32) * 5 / 9;
        _convertedValue = '${celsiusValue.toStringAsFixed(2)} °C';
      }
    });
  }

  void _toggleConversion() {
    setState(() {
      _isCelsius = !_isCelsius;
      _convertedValue = '';
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperatura Hisoblash'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    labelText:
                        'Enter Temperature in ${_isCelsius ? 'Celsius' : 'Fahrenheit'}',
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: _toggleConversion,
                  child: Text(
                    'Switch to ${_isCelsius ? 'Fahrenheit to Celsius' : 'Celsius to Fahrenheit'}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  _convertedValue,
                  style: TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                  onPressed: _convertTemperature,
                  child: Text('Hisoblash'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
