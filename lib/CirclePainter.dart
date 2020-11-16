import 'Circle.dart';
import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  List<Circle> circles = [];

  CirclePainter({this.circles}) {
    //print(circles.length);
  }

  void drawCircles(Canvas canvas) {
    for (int i = 0; i < circles.length; i++) {
      var paint = Paint();
      paint.color = circles[i].getColor();
      paint.strokeWidth = circles[i].getStrokeWidth();
      canvas.drawColor(Colors.black, BlendMode.dst);
      canvas.drawCircle(
          circles[i].getCenterPosition(), circles[i].getRadius(), paint);
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    drawCircles(canvas);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    bool canvasUpdated = false;
    for (int i = 0; i < circles.length; i++) {
      if (oldDelegate.circles[i].getCenterPosition().dy !=
          circles[i].getCenterPosition().dy) {
        canvasUpdated = true;
      }
      if (oldDelegate.circles.length != circles.length) {
        canvasUpdated = true;
      }
    }
    return true;
  }

  @override
  bool shouldRebuildSemantics(CirclePainter oldDelegate) => false;
}
