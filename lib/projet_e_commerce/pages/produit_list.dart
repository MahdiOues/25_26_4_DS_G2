import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/data/list_produits.dart';
<<<<<<< Updated upstream
import 'package:projet/projet_e_commerce/myWidgets/un_produit.dart';
=======
import 'package:projet/projet_e_commerce/myWidgets/widget_un_produit_tmp.dart';
>>>>>>> Stashed changes
import 'package:projet/projet_e_commerce/pages/produit_detail.dart';

class ProduitListPage extends StatefulWidget {
  const ProduitListPage({super.key});

  @override
  State<ProduitListPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProduitListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< Updated upstream
        title: Text("Page Liste des produits"),
=======
        title: Text("Page Produit Liste"),
>>>>>>> Stashed changes
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.4,
        children: List.generate(AllProductData.Produits.length, (index) {
          return InkWell(
            onTap: () {
<<<<<<< Updated upstream
              //Implémenter la navigation pour charger la page Detail produits
               ProduitDetailPage(produit:AllProductData.Produits[index]);
=======
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProduitDetailsPage(
                    produit: AllProductData.Produits[index],
                  ),
                ),
              );
>>>>>>> Stashed changes
            },
            child: WidgetProduit(p: AllProductData.Produits[index]),
          );
        }),
      ),
    );
  }
}
