import 'package:dart_demo/home_page.dart';
import 'package:dart_demo/widgets/container_demo.dart';
import 'package:dart_demo/widgets/image_demo.dart';
import 'package:dart_demo/widgets/richtext_demo.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: ImageDemo(),
      home: RichTextDemo(),
    );
  }
}
