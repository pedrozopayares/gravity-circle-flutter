import 'Physics.dart';
import 'Circle.dart';
import 'package:flutter/material.dart';

class Game {
  Phisics phisics = new Phisics();
  List<Circle> circles = [];

  void update() {
    if (circles.length != 0) {
      for (int i = 0; i < circles.length; i++) {
        if (circles[i].getPositionY() <= 710) {
          circles[i].setPositionY(circles[i].getPositionY() + 1);
        }
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
