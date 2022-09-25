import 'package:bmi_calc/constant/constant.dart';
import 'package:flutter/material.dart';

class ShapeRight extends StatelessWidget {
  final double? height;
  final double width;
  const ShapeRight({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'شاخص مثبت',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: greenBackground,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
