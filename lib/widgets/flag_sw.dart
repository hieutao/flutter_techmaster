import 'package:flutter/material.dart';

class SWFlag extends StatelessWidget {
  const SWFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final width = size.width - 64;
    final height = width * 2 / 3;

    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Container(
        width: width,
        height: height,
        color: Colors.cyan,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                color: Colors.yellow,
                height: 64,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 64,
              child: Container(
                color: Colors.yellow,
                width: 64,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
