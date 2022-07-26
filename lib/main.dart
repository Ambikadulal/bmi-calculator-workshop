import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';

import 'components/main_body.dart';

// Entry point of the program
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  int height = 0;
  int weight = 0;

  void setHeight(value) {
    height = value;
  }

  void setWeight(value) {
    weight = value;
  }

  // BMI = weight / height^2
  double calculateBMI(int weight, int height) {
    var heightinft = height * 0.03;
    double bmi = weight / (heightinft * heightinft);
    return bmi;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: MainBody(
          setHeight: setHeight,
          setWeight: setWeight,
        ),
        bottomNavigationBar: Builder(builder: (context) {
          return InkWell(
            onTap: () {
              var bmi = calculateBMI(weight, height);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ResultsPage(
                      bmiResult: bmi,
                    );
                  },
                ),
              );
            },
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              color: Colors.redAccent,
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
