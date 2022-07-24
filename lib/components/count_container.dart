import 'package:flutter/material.dart';

class CountContainer extends StatelessWidget {
  final String text;
  final String countText;

  const CountContainer({Key? key, required this.text, required this.countText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Decoration decoration = BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.blueGrey.shade500,
      borderRadius: BorderRadius.circular(10),
    );
    const TextStyle style = TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text,
            style: style,
          ),
          Text(
            countText,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey.shade500,
                child: const Icon(
                  Icons.male_outlined,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey.shade500,
                child: const Icon(
                  Icons.male_outlined,
                  color: Colors.white,
                  size: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
