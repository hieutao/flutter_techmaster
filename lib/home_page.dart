import 'package:dart_demo/widgets/box.dart';
import 'package:dart_demo/widgets/flag_vn.dart';
import 'package:dart_demo/widgets/stack_demo.dart';
import 'package:flutter/material.dart';

import 'models/keno.dart';
import 'widgets/flag_sw.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final statistic = [
    Keno('Chẵn', 5),
    Keno('Lẻ', 2),
    Keno('Hoà CL', 3),
  ];

  final max = 5;

  // 5 100
  // 2 2 * 100 / 5

  @override
  Widget build(BuildContext context) {
    for (final keno in statistic) {
      keno.percent = (keno.count * 100 / 5).round();
    }

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      // body: Center(
      //   child: VNFlag(),
      // ),
      // body: buildList(),
      // body: const VIFlag(),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: -size.height + 100,
            child: Container(
              width: size.height,
              height: size.height,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(size.height / 2))
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Text('data'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildList() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          buildItem(statistic[0]),
          const Divider(),
          buildItem(statistic[1]),
          Container(
            height: 0.5,
            color: Colors.black12,
            margin: const EdgeInsets.symmetric(vertical: 6),
          ),
          buildItem(statistic[2]),
        ],
      ),
    );
  }

  Widget buildItem(Keno keno) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(keno.text),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: keno.percent,
                  child: Container(
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 100 - keno.percent,
                  child: Container(),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '${keno.count} lan',
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
