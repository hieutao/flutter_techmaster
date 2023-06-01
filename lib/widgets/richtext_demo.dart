import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text'),
      ),
      // body: RichText(
      //   text: TextSpan(
      //     text: "Hello Richtext",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: RichText(
        text: const TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(text: 'Bằng việc abc xyz tôi đồng ý với'),
            TextSpan(
              text: ' Chính sách & điều khoản ',
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
              ),
            ),
            TextSpan(text: 'của xxx'),
          ],
        ),
      ),
    );
  }
}
