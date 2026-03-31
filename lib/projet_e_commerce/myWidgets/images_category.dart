import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/const/images.dart';

class ImageCategory extends StatelessWidget {
  String titre;
  String urlImages;
  ImageCategory({required this.titre, required this.urlImages, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(titre),
        SizedBox(
          height: 120,
          width: 200,
          child: Image.asset(urlImages, fit: BoxFit.cover),
        ),
      ],
    );
  }
}
