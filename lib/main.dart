import 'package:flutter/material.dart';

import 'components/main_body.dart';

// Entry point of the program
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        drawer: const Drawer(
          child: Text("Hi! This is my app."),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("BMI CALCULATOR"),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: const MainBody(),
        bottomNavigationBar: Container(
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
      ),
    );
  }
}
