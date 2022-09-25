import 'package:bmi_calc/constant/constant.dart';
import 'package:flutter/material.dart';

class ShapeLeft extends StatelessWidget {
  final double? width;
  final double? height;

  ShapeLeft({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: black,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'شاخص منفی',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
