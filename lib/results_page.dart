import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final double bmiResult;
  const ResultsPage({Key? key, required this.bmiResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Your Result'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Your BMI is'.toUpperCase(),
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
              ),
            ),
          ),
          Center(
            child: Text(
              bmiResult.toStringAsFixed(2),
              style: TextStyle(
                color: Colors.white,
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Recalculate'),
            ),
          )
        ],
      ),
    );
  }
}
