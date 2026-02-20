import 'package:flutter/material.dart';

class BarreNavigationScreen extends StatefulWidget {
  const BarreNavigationScreen({super.key});

  @override
  State<BarreNavigationScreen> createState() => _BarreNavigationScreenState();
}

class _BarreNavigationScreenState extends State<BarreNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.grey,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.blue),
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Liste Produits",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Mon Panier"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Favoris"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Mon Profile"),
        ],
      ),
      body: Text("TO DO ..."),
    );
  }
}
