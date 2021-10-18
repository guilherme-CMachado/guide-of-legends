import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  final String title;
  final String value;
  final double titleSize;
  final double valueSize;
  Stats({this.title, this.value, this.titleSize = 15, this.valueSize = 15});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Column(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: titleSize,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: valueSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
