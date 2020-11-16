import 'Physics.dart';
import 'Circle.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Game {
  List<Circle> circles = [];

  void freeFall(Circle circle) {
    DateTime actualTime = new DateTime.now();
    Duration elapsedTime = actualTime.difference(circle.getInitialTime());
    circle.setPositionY(circle.getPositionY() +
        (Physics.gravity * pow(elapsedTime.inMilliseconds, 2)) * 0.5);
  }

  void update() {
    if (circles.length != 0) {
      for (int i = 0; i < circles.length; i++) {
        freeFall(circles[i]);
      }
    }
  }

  void createCircle(Offset centerPosition) {
    Circle circle = new Circle(centerPosition);
    circles.add(circle);
    //print(circles.length);
  }

  List<Circle> getCircles() {
    return this.circles;
  }
}
