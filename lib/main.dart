import 'Game.dart';
import 'CirclePainter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gravity Circle',
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

class _GravityCircleFlutterState extends State<GravityCircleFlutter>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 33),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GameAnimatedWidget(
      controller: _controller,
    );
  }
}

class GameAnimatedWidget extends AnimatedWidget {
  GameAnimatedWidget({Key key, AnimationController controller})
      : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable;
  Offset tapDownPosition = Offset(0.0, 0.0);
  Game game = new Game();

  void onTapDownDetector(Offset globalPosition) {
    game.createCircle(globalPosition);
  }

  @override
  Widget build(BuildContext context) {
    game.update();
    return Container(
      child: GestureDetector(
        onTapDown: (TapDownDetails details) {
          onTapDownDetector(details.globalPosition);
        },
        child: CustomPaint(
          painter: CirclePainter(
            circles: game.getCircles(),
          ),
          child: Center(),
        ),
      ),
    );
  }
}
