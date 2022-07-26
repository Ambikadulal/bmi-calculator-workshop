import 'package:bmi_calculator/components/height_container.dart';
import 'package:flutter/material.dart';

import 'common_container.dart';
import 'count_container.dart';

class MainBody extends StatelessWidget {
  final Function(int height) setHeight;
  final Function(int weight) setWeight;
  const MainBody({Key? key, required this.setHeight, required this.setWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
        color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
    final Decoration decoration = BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.blueGrey.shade500,
      borderRadius: BorderRadius.circular(10),
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(
                child: CommonContainer(
                  icon: Icon(
                    Icons.male_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  text: "MALE",
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: CommonContainer(
                  icon: Icon(
                    Icons.female_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  text: "FEMALE",
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: HeightContainer(
            text: 'Height',
            countText: '0',
            onChange: (int height) {
              setHeight(height);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CountContainer(
                  text: "WEIGHT",
                  countText: "60",
                  onChange: setWeight,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: CountContainer(
                  onChange: (value) {},
                  text: "AGE",
                  countText: "28",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
