// ignore_for_file: library_private_types_in_public_api

import 'package:bmicalculator/const.dart';
import 'package:flutter/material.dart';
import 'calculateRslt.dart';
import 'newscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

//represent constant value.like array index 0,1...
enum Gender {
  male,
  female,
}

class _FirstScreenState extends State<FirstScreen> {
  int height = 100;
  int weight = 40;
  int age = 20;
  late Gender selectedGender;
  Color maleBoxColor = inActiveColor;
  Color femaleBoxColor = inActiveColor;

  void updatecolor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleBoxColor == inActiveColor) {
        maleBoxColor = activeColor;
        femaleBoxColor = inActiveColor;
      } else {
        maleBoxColor = inActiveColor;
      }
    }
// this statement is used for female card color Active

    if (selectedGender == Gender.female) {
      if (femaleBoxColor == inActiveColor) {
        femaleBoxColor = activeColor;
        maleBoxColor = inActiveColor;
      } else {
        femaleBoxColor = inActiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EXTEND",
      home: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
            backgroundColor: appbarclr,
            toolbarHeight: 70,
            title: const Center(
              child: Text(
                "BMI CALCULATOR",
                style: bMIclor,
              ),
            )),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updatecolor(Gender.male);
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: maleBoxColor
                          // color: updatecolor == Gender.male
                          //     ? activeColor
                          //     : inActiveColor,

                          //  containercol,
                          ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 100,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text("MALE", style: textcolor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updatecolor(Gender.female);
                      });
                    },
                    child: Container(
                      // color: femaleBoxColor,
                      margin: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: femaleBoxColor,
                        // color: updatecolor == Gender.female
                        //     ? inActiveColor
                        //     : inActiveColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.female, color: Colors.white, size: 100),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text("FEMALE", style: textcolor),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: containercolr,
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text("HEIGHT", style: textcolor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(height.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                              padding: EdgeInsets.only(top: 14),
                              child: Text("cm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Slider(
                              // activeColor: activeColor,
                              // inactiveColor: inActiveColor,
                              activeColor: Slidercolor,
                              value: height.toDouble(),
                              min: 100,
                              max: 250,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: containercolr,
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("WEIGHT", style: textcolor),
                          ),
                          Text(weight.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: FloatingActionButton(
                                          backgroundColor: const Color.fromARGB(
                                              255, 191, 10, 10),
                                          onPressed: () {
                                            setState(() {
                                              if (weight > 0) {
                                                weight--;
                                              }
                                            });
                                          },
                                          child: const Icon(Icons.remove)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: FloatingActionButton(
                                          backgroundColor: const Color.fromARGB(
                                              255, 191, 10, 10),
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          child: const Icon(Icons.add)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: containercolr,
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("AGE", style: textcolor),
                        ),
                        Text(age.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: FloatingActionButton(
                                    backgroundColor:
                                        const Color.fromARGB(255, 191, 10, 10),
                                    onPressed: () {
                                      setState(() {
                                        if (age > 0) {
                                          age--;
                                        }
                                      });
                                    },
                                    child: const Icon(Icons.remove),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: FloatingActionButton(
                                      backgroundColor: const Color.fromARGB(
                                          255, 191, 10, 10),
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: const Icon(Icons.add)),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        CalculatorBrain calculate =
                            CalculatorBrain(height, weight);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Newscreen(
                                    bmiResult: calculate.calculateBMI(),
                                    resultText: calculate.getResult(),
                                    interpretation:
                                        calculate.getInterpretation())));
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: calculatorbutton,
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Text(
                            "Calculate",
                            style: TextStyle(
                                color: calculatebtn,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
