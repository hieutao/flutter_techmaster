import 'package:flutter/material.dart';

class VNFlag extends StatelessWidget {
  const VNFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.red,
      child: const Icon(Icons.star, color: Colors.yellow, size: 96,),
    );
  }
}
