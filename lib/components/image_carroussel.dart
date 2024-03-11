import 'package:flutter/material.dart';

class ImageCarroussel extends StatelessWidget {
  final Function(int) onChange;
  final int currentImage;
  final String image;
  const ImageCarroussel({
    super.key,
    required this.onChange,
    required this.currentImage,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: 5,
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Image.asset(image);
        },
      ),
    );
  }
}
