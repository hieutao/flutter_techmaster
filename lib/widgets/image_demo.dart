import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image demo'),
      ),
      // body: Container(
      //   height: 300,
      //   width: 300,
      //   color: Colors.yellow,
      //   child: Image.network(
      //     "https://i1-kinhdoanh.vnecdn.net/2023/06/01/xang12222-1685602447-168560248-2330-8090-1685604723.jpg?w=680&h=408&q=100&dpr=2&fit=crop&s=BoRIUb_HpyWKZEnpGCWxuQ",
      //     fit: BoxFit.cover,
      //   ),
      // ),

      // body: Image.asset(
      //   'assets/images/p1.png',
      //   width: 100,
      //   width: 100,
      //   height: 300,
      // ),

      body: InteractiveViewer(
        child: Center(
          child: CachedNetworkImage(
            imageUrl: 'https://img.freepik.com/premium-photo/image-colorful-galaxy-sky-generative-ai_791316-9864.jpg?w=1480',
            placeholder: (ctx, _){
              return const Center(child: CircularProgressIndicator());
            },
            errorWidget: (_, __, ___){
              return const Center(child: Icon(Icons.error_rounded));
            },
          ),
        ),
      ),
    );
  }
}
