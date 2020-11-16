import 'package:flutter/material.dart';

class Circle {
  double positionX = 0.0;
  double positionY = 0.0;
  double radius = 10.0;
  double weight = 1.5;
  double friction = 0.0;
  Color color = Colors.yellowAccent;
  double strokeWidth = 5;
  DateTime initialTime;
  double velocity = 0.0;

  Circle(Offset centerPosition) {
    this.positionX = centerPosition.dx;
    this.positionY = centerPosition.dy;
    this.initialTime = new DateTime.now();
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

  DateTime getInitialTime() {
    return initialTime;
  }

  double getVelocity() {
    return this.velocity;
  }

  void setVelocity(double velocity) {
    this.velocity = velocity;
  }

  void setPositionY(double y) {
    this.positionY = y;
  }
}
