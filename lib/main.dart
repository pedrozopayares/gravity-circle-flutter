import 'CirclePainter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GravityCircleFlutter(),
    );
  }
}

class GravityCircleFlutter extends StatefulWidget {
  GravityCircleFlutter({Key key}) : super(key: key);

  @override
  _GravityCircleFlutterState createState() => _GravityCircleFlutterState();
}

class _GravityCircleFlutterState extends State<GravityCircleFlutter> {
  Offset tapDownPosition = Offset(0.0, 0.0);

  void onTapDownDetector(Offset globalPosition) {
    setState(() {
      tapDownPosition = globalPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTapDown: (TapDownDetails details) {
          onTapDownDetector(details.globalPosition);
        },
        child: CustomPaint(
          painter: CirclePainter(
            circlePosition: tapDownPosition,
          ),
          child: Center(),
        ),
      ),
    );
  }
}
