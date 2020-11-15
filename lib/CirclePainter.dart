import 'Phisics.dart';
import 'Circle.dart';
import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  Phisics phisics = new Phisics();
  Offset tapPosition = Offset(0.0, 0.0);
  List<Circle> circles = [];

  CirclePainter({Offset tapPosition}) {
    createCircle(tapPosition);
  }

  void createCircle(Offset centerPosition) {
    circles.add(new Circle(centerPosition));
  }

  void drawCircles(Canvas canvas, List<Circle> circles) {
    for (int i = 0; i < circles.length; i++) {
      var paint = Paint();
      paint.color = circles[i].getColor();
      paint.strokeWidth = circles[i].getStrokeWidth();
      canvas.drawColor(Colors.black, BlendMode.color);
      canvas.drawCircle(
          circles[i].getCenterPosition(), circles[i].getRadius(), paint);
    }
    print(circles.length);
  }

  void update(List<Circle> circles) {}

  @override
  void paint(Canvas canvas, Size size) {
    drawCircles(canvas, circles);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    bool canvasUpdated = false;
    for (int i = 0; i < circles.length; i++) {
      if (oldDelegate.circles[i].getCenterPosition() !=
          circles[i].getCenterPosition()) {
        canvasUpdated = true;
      }
    }
    return canvasUpdated;
  }

  @override
  bool shouldRebuildSemantics(CirclePainter oldDelegate) => false;
}
