import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/myWidgets/mon_menu.dart';
import 'package:projet/projet_e_commerce/pages/favoris.dart';
import 'package:projet/projet_e_commerce/pages/home_page.dart';
import 'package:projet/projet_e_commerce/pages/page_user.dart';
import 'package:projet/projet_e_commerce/pages/panier.dart';
import 'package:projet/projet_e_commerce/pages/produit_list.dart';

class BarreNavigationScreen extends StatefulWidget {
  const BarreNavigationScreen({super.key});

  @override
  State<BarreNavigationScreen> createState() => _BarreNavigationScreenState();
}

class _BarreNavigationScreenState extends State<BarreNavigationScreen> {
  int selectedIndex = 0;
  List<Widget> mesPages = [
    HomePage(),
    ProduitListPage(),
    PanierPage(),
<<<<<<< Updated upstream
    FavoriPage(),
    UserInfoPage(),
  ];

=======
    FavoritePage(),
    userInfoPage(),
  ];
>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MonMenu(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
<<<<<<< Updated upstream
        currentIndex: selectedIndex,
        backgroundColor: Colors.grey,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.blue),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Liste Produits",
=======
        //backgroundColor: Colors.grey,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.blue),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Acceuil"),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List Produits",
>>>>>>> Stashed changes
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Mon Panier",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoris"),
<<<<<<< Updated upstream
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "Profil"),
=======
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "Mon Profile"),
>>>>>>> Stashed changes
        ],
      ),
      body: mesPages[selectedIndex],
    );
  }
}
