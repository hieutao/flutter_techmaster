import 'package:flutter/material.dart';

class RateStar extends StatelessWidget {
  final int rateValue;

  const RateStar({super.key, required this.rateValue});

  @override
  Widget build(BuildContext context) {
    
    final stars = <Widget>[];

    for (var i = 0; i < 5; i++){
      if (i < rateValue){
        stars.add(const Icon(Icons.star_rounded, color: Colors.orange,));
      }else{
        stars.add(const Icon(Icons.star_rounded, color: Colors.black12,));
      }
    }

    return Row(
      children: stars,
    );
  }
}
