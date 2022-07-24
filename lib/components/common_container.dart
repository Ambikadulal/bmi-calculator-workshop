import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final Icon icon;
  final String text;

  const CommonContainer({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blueGrey.shade500,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Text(
            text,
            style: const TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
