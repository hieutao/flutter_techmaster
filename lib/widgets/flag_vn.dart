import 'package:flutter/material.dart';

class VIFlag extends StatelessWidget {
  const VIFlag({Key? key}) : super(key: key);

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
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              child: Icon(
                Icons.star_rate,
                size: 128,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
