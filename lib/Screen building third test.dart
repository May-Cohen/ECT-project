import 'dart:math';
import 'package:flutter/cupertino.dart';

class screenBuilding extends StatelessWidget {
  final List<Widget> buttonsFirstRow;
  final List<Widget> buttonsSecondRowHalf1;
  final List<Widget> buttonsSecondRowHalf2;
  final double distance;
  final double startPoint;
  final double endPoint;
  final Widget? centerButton;

  const screenBuilding(
      {super.key,
      required this.buttonsFirstRow,
      required this.buttonsSecondRowHalf1,
      required this.buttonsSecondRowHalf2,
      required this.distance,
      this.startPoint = -pi,
      this.endPoint = 0,
      required this.centerButton});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (centerButton != null)
          Positioned(
            left: distance + 70,
            top: distance + 70,
            child: centerButton!,
          ),
        ...buttonsFirstRow
            .asMap()
            .map((index, button) {
              final angle1 = (index / (buttonsFirstRow.length - 1));
              final angle2 = startPoint + (endPoint - startPoint) * angle1;
              final X = distance * cos(angle2);
              final Y = distance * sin(angle2);
              return MapEntry(
                index,
                Positioned(
                  left: distance + 70 + X,
                  top: distance + 70 + Y,
                  child: Transform.rotate(angle: distance + 70, child: button),
                ),
              );
            })
            .values
            .toList(),
        ...buttonsSecondRowHalf1
            .asMap()
            .map((index, button) {
              final angle1 = (index / (buttonsFirstRow.length - 1));
              final angle2 = startPoint + (endPoint - startPoint) * angle1;
              final X = distance * cos(angle2);
              final Y = distance * sin(angle2);
              return MapEntry(
                index,
                Positioned(
                  left: (distance + 70) - 40 + X,
                  top: (distance + 70) - 40 + Y,
                  child: Transform.rotate(angle: 0, child: button),
                ),
              );
            })
            .values
            .toList(),
        ...buttonsSecondRowHalf2
            .asMap()
            .map((index, button) {
              final angle1 = (index / (buttonsFirstRow.length - 1));
              final angle2 = endPoint + (startPoint - endPoint) * angle1;
              final X = distance * cos(angle2);
              final Y = distance * sin(angle2);
              return MapEntry(
                index,
                Positioned(
                  left: (distance + 70) + 40 + X,
                  top: (distance + 70) - 40 + Y,
                  child: Transform.rotate(angle: 0, child: button),
                ),
              );
            })
            .values
            .toList(),
      ],
    );
  }
}
