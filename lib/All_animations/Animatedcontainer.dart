import 'package:flutter/material.dart';
import 'dart:math';

class AniContainer extends StatefulWidget {
  const AniContainer({Key? key}) : super(key: key);

  @override
  _AniContainerState createState() => _AniContainerState();
}

class _AniContainerState extends State<AniContainer> {
  double height = 100, width = 100;
  Color containercolor = Colors.blue;
  Color gradColor1 = Colors.blue;
  Color gradColor2 = Colors.red;

  void getRandomSize() {
    height = Random().nextInt(600).toDouble();
    width = Random().nextInt(600).toDouble();
  }

  void getRandomColor() {
    containercolor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    gradColor2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    gradColor1 = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AnimatedContainer(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: containercolor,
                gradient: RadialGradient(colors: [gradColor1, gradColor2],
                stops: [0.3,0.6,1.0])
                ),
            duration: Duration(seconds: 3),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  getRandomSize();
                  getRandomColor();
                });
              },
              child: Text("animate"))
        ],
      ),
    );
  }
}
