import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      width: double.infinity,
      height: 300,
      child: const Stack(
        children: [
          Text('Hello stack'),
          Text('blue stack'),
          // Positioned.fill(child: Container(color: ,)),
          Positioned(
            // top: 40,
            bottom: 0,
            child: Icon(
              Icons.star_rounded,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
