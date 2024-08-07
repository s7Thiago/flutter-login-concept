import 'package:flutter/material.dart';
import 'package:login_concept/shared/widgets/custom_button.dart';
import 'package:login_concept/view/randomImages/widget/image.dart';
import 'package:login_concept/shared/widgets/widget_extensions.dart';

class RandomImages extends StatefulWidget {
  final String texto;

  const RandomImages({super.key, required this.texto});

  @override
  State<RandomImages> createState() => _RandomImagesState();
}

class _RandomImagesState extends State<RandomImages> {
  String urlImg = 'https://picsum.photos/200/300';

  updateImage() {
    setState(() {
      urlImg =
          'https://picsum.photos/200/300?random=${DateTime.now().millisecondsSinceEpoch}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List<ImageWidget>.generate(10, (index) => const ImageWidget()),
            Image.network(
              urlImg,
              height: 200,
              width: 300,
            ),
            CustomButton(
              onTap: updateImage,
              text: widget.texto,
            ),
          ],
        ));
  }
}
