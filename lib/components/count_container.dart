import 'package:flutter/material.dart';

class CountContainer extends StatefulWidget {
  final String text;
  final String countText;

  const CountContainer({Key? key, required this.text, required this.countText})
      : super(key: key);

  @override
  State<CountContainer> createState() => _CountContainerState();
}

class _CountContainerState extends State<CountContainer> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    final Decoration decoration = BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.blueGrey.shade500,
      borderRadius: BorderRadius.circular(10),
    );
    const TextStyle style = TextStyle(
        color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.text,
            style: style,
          ),
          Text(
            value.toString(),
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    value--;
                  });
                },
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey.shade500,
                  child: const Icon(
                    Icons.minimize,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    value++;
                  });
                },
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey.shade500,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
