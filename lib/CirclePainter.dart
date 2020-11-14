import 'Phisics.dart';
import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  Offset centerPosition = Offset(0.0, 0.0);
  double weight = 0.0;
  double friction = 0.0;
  Phisics phisics = new Phisics();

  CirclePainter({Offset circlePosition}) {
    this.centerPosition = circlePosition;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double radius = 10.0;
    var paint = Paint();
    paint.color = Colors.yellowAccent;
    paint.strokeWidth = 5;
    canvas.drawColor(Colors.black, BlendMode.color);
    canvas.drawCircle(centerPosition, radius, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate.centerPosition != centerPosition;
  }

  @override
  bool shouldRebuildSemantics(CirclePainter oldDelegate) => false;
}
