import 'package:bmi_calc/background_shape_left.dart';
import 'package:bmi_calc/background_shape_right.dart';
import 'package:bmi_calc/constant/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  final WeightController = TextEditingController();
  final heightController = TextEditingController();

  double resultBmi = 0;
  String resultTxt = '';
  double widthGood = 100;
  double widthBad = 100;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          '؟؟ BMI تو چنده ',
          style: TextStyle(
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: heightController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: greenBackground,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'قد',
                      hintStyle: TextStyle(
                        color: greenBackground.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: WeightController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: greenBackground,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'وزن',
                      hintStyle: TextStyle(
                        color: greenBackground.withOpacity(0.5),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                final weight = double.parse(WeightController.text);
                final height = double.parse(heightController.text);

                setState(() {
                  resultBmi = weight / (height * height);
                  if (resultBmi > 25) {
                    widthBad = 270;
                    widthGood = 40;
                    resultTxt = 'شما اضافه وزن دارید';
                  } else if (resultBmi >= 18.5 && resultBmi <= 25) {
                    resultTxt = 'شما نرمال هستید';
                    widthBad = 40;
                    widthGood = 270;
                  } else {
                    resultTxt = 'شما کم تر از نرمال هستید';
                    widthBad = 40;
                    widthGood = 40;
                  }
                });
              },
              child: Text(
                '! محاسبه کن',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '${resultBmi.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '$resultTxt',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            ShapeRight(width: widthGood, height: 40),
            SizedBox(
              height: 30,
            ),
            ShapeLeft(width: widthBad, height: 40)
          ],
        ),
      ),
    );
  }
}
