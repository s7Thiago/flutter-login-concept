import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final int height;
  final int width;

  const ImageWidget({super.key, this.width = 200, this.height = 300});

  @override
  Widget build(BuildContext context) {
    return Image.network(
        'https://picsum.photos/$width/$height?random=${DateTime.now().millisecondsSinceEpoch}');
  }
}
