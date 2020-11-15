import 'package:flutter/material.dart';

class Circle {
  Offset centerPosition = Offset(0.0, 0.0);
  double radius = 10.0;
  double weight = 0.0;
  double friction = 0.0;
  Color color = Colors.yellowAccent;
  double strokeWidth = 5;

  Circle(this.centerPosition);

  Offset getCenterPosition() {
    return this.centerPosition;
  }

  double getRadius() {
    return this.radius;
  }

  Color getColor() {
    return this.color;
  }

  double getStrokeWidth() {
    return this.strokeWidth;
  }
}
