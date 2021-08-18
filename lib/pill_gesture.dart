import 'package:flutter/material.dart';

class PillGesture extends StatelessWidget {
  final GestureDragStartCallback onVerticalDragStart;
  final GestureDragUpdateCallback onVerticalDragUpdate;
  final GestureDragEndCallback onVerticalDragEnd;
  final Color? pillColor;

  PillGesture({
    required this.onVerticalDragStart,
    required this.onVerticalDragUpdate,
    required this.onVerticalDragEnd,
    required this.pillColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onVerticalDragStart: onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd,
      child: Container(
        width: double.maxFinite,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              height: 5.0,
              width: 25.0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: pillColor ?? Colors.blueGrey[200],
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
