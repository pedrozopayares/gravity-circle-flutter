import 'package:flutter/material.dart';

class Circle {
  double positionX = 0.0;
  double positionY = 0.0;
  double radius = 10.0;
  double weight = 0.0;
  double friction = 0.0;
  Color color = Colors.yellowAccent;
  double strokeWidth = 5;

  Circle(Offset centerPosition) {
    this.positionX = centerPosition.dx;
    this.positionY = centerPosition.dy;
  }

  Offset getCenterPosition() {
    return new Offset(positionX, positionY);
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

  double getPositionY() {
    return this.positionY;
  }

  void setPositionY(double y) {
    this.positionY = y;
  }
}
