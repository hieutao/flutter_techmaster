import 'package:dart_demo/widgets/box.dart';
import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: 500,
      color: Colors.grey,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GreenBox(),
          RedBox(),
          BlueBox(),
        ],
      ),
    );
  }
}
