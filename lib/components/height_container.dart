import 'package:flutter/material.dart';

class HeightContainer extends StatefulWidget {
  final String text;
  final String countText;

  final Function(int height) onChange;
  const HeightContainer(
      {Key? key,
      required this.text,
      required this.countText,
      required this.onChange})
      : super(key: key);

  @override
  State<HeightContainer> createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
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
      // width: 100,
      padding: const EdgeInsets.all(10),
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.text,
            style: style,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              Text(
                "cm",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (value > 0) {
                      value--;
                      widget.onChange(value);
                    }
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
                    widget.onChange(value);
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
