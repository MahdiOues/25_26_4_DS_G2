import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/const/images.dart';
<<<<<<< Updated upstream
import 'package:projet/projet_e_commerce/myWidgets/carousel_images.dart';
import 'package:projet/projet_e_commerce/myWidgets/image_categorie.dart';
=======
import 'package:projet/projet_e_commerce/myWidgets/carousel_image.dart';
import 'package:projet/projet_e_commerce/myWidgets/images_category.dart';
>>>>>>> Stashed changes

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page d'accueil"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
<<<<<<< Updated upstream
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //affciher uen image
          ImageCarousel(),
          Text(
            "Catégorie",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
            ),
          ),
          //Catégories
=======
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Carousel
          const ImageCarousel(),

          const SizedBox(height: 16),

          // Categories title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Categories",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Categories images (horizontal scroll)
>>>>>>> Stashed changes
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(mesImagesCategories.length, (index) {
<<<<<<< Updated upstream
                return ImageCategorie(
                  titre: titreMesImagesCategories[index],
                  urlImage: mesImagesCategories[index],
                );
              }),
            ),
          ),
          Text(
            "Marque",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(mesImagesCategories.length, (index) {
                return ImageCategorie(
                  titre: titreMesImagesCategories[index],
                  urlImage: mesImagesCategories[index],
=======
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageCategory(
                    titre: titreMesImagesCategories[index],
                    urlImages: mesImagesCategories[index],
                  ),
>>>>>>> Stashed changes
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
