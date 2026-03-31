import 'package:flutter/material.dart';
import 'package:projet/projet_e_commerce/model/class_produit.dart';

<<<<<<< Updated upstream
class ProduitDetailPage extends StatefulWidget {
  Produit produit = Produit(
    id: "",
    description: "",
    title: "",
    price: 0,
    quantity: 0,
    brand: "",
    imageUrl: "",
    produitCategoryName: "",
  );
  ProduitDetailPage({super.key, required this.produit});

  @override
  State<ProduitDetailPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProduitDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.produit.title)),
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(widget.produit.imageUrl),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Column(
              children: [
                const SizedBox(height: 250.0),
                Container(
                  color: Colors.grey[300],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          widget.produit.description,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Prix:" + widget.produit.price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "description",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(),
                      infoProduct("Brand", widget.produit.brand),
                      infoProduct(
                        "Quantity",
                        widget.produit.quantity.toString(),
                      ),
                      infoProduct(
                        "Category",
                        widget.produit.produitCategoryName,
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
=======
class ProduitDetailsPage extends StatelessWidget {
  final Produit produit;

  const ProduitDetailsPage({super.key, required this.produit});

  @override
  Widget build(BuildContext context) {
    final imageHeight = MediaQuery.of(context).size.height * 0.42;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          produit.title,
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image du produit
            SizedBox(
              height: imageHeight,
              width: double.infinity,
              child: Image.network(
                produit.imageUrl,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) =>
                    const Center(child: Icon(Icons.broken_image, size: 80)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Titre
                  Text(
                    produit.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Prix
                  Text(
                    '${produit.price.toStringAsFixed(2)} TND',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const Divider(height: 24),

                  // Description
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    produit.description,
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  const Divider(height: 24),

                  // Infos supplémentaires
                  _infoRow(Icons.business, 'Marque', produit.brand.isEmpty ? 'N/A' : produit.brand),
                  const SizedBox(height: 10),
                  _infoRow(Icons.category, 'Catégorie', produit.produitCategoryName),
                  const SizedBox(height: 10),
                  _infoRow(
                    Icons.inventory_2_outlined,
                    'Stock',
                    produit.quantity > 0
                        ? '${produit.quantity} disponible(s)'
                        : 'Rupture de stock',
                    valueColor: produit.quantity > 0 ? Colors.green : Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
>>>>>>> Stashed changes
      ),
    );
  }

<<<<<<< Updated upstream
  Widget infoProduct(String titre, String value) {
    return Row(
      children: [
        Text(titre, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
=======
  Widget _infoRow(IconData icon, String label, String value, {Color? valueColor}) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey[600]),
        const SizedBox(width: 8),
        Text(
          '$label : ',
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 14,
              color: valueColor ?? Colors.black87,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
>>>>>>> Stashed changes
      ],
    );
  }
}
