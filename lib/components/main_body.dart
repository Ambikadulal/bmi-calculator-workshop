import 'package:flutter/material.dart';

import 'common_container.dart';
import 'count_container.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
    final Decoration decoration = BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.blueGrey.shade500,
      borderRadius: BorderRadius.circular(10),
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CommonContainer(
              icon: Icon(
                Icons.male_outlined,
                color: Colors.white,
                size: 40,
              ),
              text: "MALE",
            ),
            CommonContainer(
              icon: Icon(
                Icons.female_outlined,
                color: Colors.white,
                size: 40,
              ),
              text: "FEMALE",
            ),
          ],
        ),
        Container(
          height: 100,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          // width: 100,
          decoration: decoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "HEIGHT",
                style: style,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "180",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    "cm",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CountContainer(
              text: "WEIGHT",
              countText: "60",
            ),
            CountContainer(
              text: "AGE",
              countText: "28",
            ),
          ],
        ),
      ],
    );
  }
}
