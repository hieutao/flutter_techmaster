import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppbar(),
      body: buildBody(context),
    );
  }

  PreferredSizeWidget buildAppbar() {
    return AppBar(
      backgroundColor: Colors.red,
      title: const Text('Container'),
      centerTitle: true,
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          border: Border.all(color: Colors.red, width: 5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 14,
              spreadRadius: 0,
              offset: Offset(0, 4),
            )
          ],
          gradient: const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.star,
            size: 128,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

final statistic = [
  Keno('Chẵn', 5),
  Keno('Lẻ', 2),
  Keno('Hoà CL', 3),
];

class Keno{
  final String text;
  final int count;

  Keno(this.text, this.count);
}
