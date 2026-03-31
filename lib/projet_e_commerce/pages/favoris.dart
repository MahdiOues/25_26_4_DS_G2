import 'package:flutter/material.dart';

<<<<<<< Updated upstream
class FavoriPage extends StatefulWidget {
  const FavoriPage({super.key});

  @override
  State<FavoriPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavoriPage> {
=======
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavoritePage> {
>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Favoris"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("To DO....."),
    );
  }
}
