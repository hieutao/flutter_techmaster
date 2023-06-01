import 'package:flutter/material.dart';

class RUFlag extends StatelessWidget {
  const RUFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const margin = 32.0;
    final widthFlag = MediaQuery.of(context).size.width - (margin * 2);
    final heightFlag = widthFlag * 2 / 3;
    final heightColor = heightFlag / 3;

    final colorsWidget = <Widget>[
      ColorWidget(height: heightColor, color: Colors.white),
      ColorWidget(height: heightColor, color: Colors.blueAccent),
      ColorWidget(height: heightColor, color: Colors.red),
    ];



    return Container(
      padding: const EdgeInsets.symmetric(horizontal: margin),
      child: Center(
        child: Container(
          // color: Colors.pink,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12)
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: colorsWidget,
          ),
        ),
      ),
    );
  }


}

class ColorWidget extends StatelessWidget {
  final double height;
  final Color color;

  const ColorWidget({super.key, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
    );
  }
}
