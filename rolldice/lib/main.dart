import 'package:flutter/material.dart';
import 'package:rolldice/gradient_container.dart';

void main() {
  runApp(
    //const loai bo gach duoi mau xanh
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  );
}
