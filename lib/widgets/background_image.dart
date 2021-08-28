import 'package:flutter/material.dart';
import 'package:task2_msp_alazhar/constants/image_url.dart';
class BackgroundImage extends StatelessWidget {
  final Size size;

  const BackgroundImage({required this.size}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: Image.asset(
        imagesUrl[0],
        fit: BoxFit.fill,
      ),
    );
  }
}

