// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
    this.height,
    this.weight, {
    Height,
    Weight,
  });
  final int height;
  final int weight;
  late double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 20) {
      return 'OverWeight';
    } else if (_bmi > 16) {
      return "Normal";
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 20) {
      return "You have heigher than normal body weight.Try to exercise";
    } else if (_bmi > 16) {
      return "You have a normal body weight.Good job!";
    } else {
      return "Yor have a lower than normal body weight,You can eat healthy foods";
    }
  }
}
