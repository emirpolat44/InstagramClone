import 'package:flutter/material.dart';
import 'SearchImage.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({Key? key, required this.imageData}) : super(key: key);

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9.0),
        child: Image.network(imageData.imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}