import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double radius = 10.0;
    double x = size.width / 2;
    double y = size.height / 2;
    var paint = Paint();
    paint.color = Colors.yellowAccent;
    paint.strokeWidth = 5;
    canvas.drawColor(Colors.black, BlendMode.color);
    canvas.drawCircle(Offset(x, y), radius, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CirclePainter oldDelegate) => false;
}
