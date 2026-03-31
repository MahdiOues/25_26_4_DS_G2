<<<<<<< Updated upstream
=======
// ignore_for_file: public_member_api_docs, sort_constructors_first
>>>>>>> Stashed changes
import 'dart:convert';

class Produit {
  String id;
  String title;
  String description;
  double price;
  String imageUrl;
  String brand;
<<<<<<< Updated upstream
  String produitCategoryName;
=======
  String  produitCategoryName;
>>>>>>> Stashed changes
  int quantity;
  Produit({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.brand,
    required this.produitCategoryName,
    required this.quantity,
  });

  Produit copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    String? imageUrl,
    String? brand,
    String? produitCategoryName,
    int? quantity,
  }) {
    return Produit(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      brand: brand ?? this.brand,
      produitCategoryName: produitCategoryName ?? this.produitCategoryName,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
<<<<<<< Updated upstream
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'price': price});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'brand': brand});
    result.addAll({'produitCategoryName': produitCategoryName});
    result.addAll({'quantity': quantity});
  
    return result;
=======
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'brand': brand,
      'produitCategoryName': produitCategoryName,
      'quantity': quantity,
    };
>>>>>>> Stashed changes
  }

  factory Produit.fromMap(Map<String, dynamic> map) {
    return Produit(
<<<<<<< Updated upstream
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      imageUrl: map['imageUrl'] ?? '',
      brand: map['brand'] ?? '',
      produitCategoryName: map['produitCategoryName'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
=======
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      imageUrl: map['imageUrl'] as String,
      brand: map['brand'] as String,
      produitCategoryName: map['produitCategoryName'] as String,
      quantity: map['quantity'] as int,
>>>>>>> Stashed changes
    );
  }

  String toJson() => json.encode(toMap());

<<<<<<< Updated upstream
  factory Produit.fromJson(String source) => Produit.fromMap(json.decode(source));
=======
  factory Produit.fromJson(String source) => Produit.fromMap(json.decode(source) as Map<String, dynamic>);
>>>>>>> Stashed changes

  @override
  String toString() {
    return 'Produit(id: $id, title: $title, description: $description, price: $price, imageUrl: $imageUrl, brand: $brand, produitCategoryName: $produitCategoryName, quantity: $quantity)';
  }

  @override
<<<<<<< Updated upstream
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Produit &&
=======
  bool operator ==(covariant Produit other) {
    if (identical(this, other)) return true;
  
    return 
>>>>>>> Stashed changes
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.price == price &&
      other.imageUrl == imageUrl &&
      other.brand == brand &&
      other.produitCategoryName == produitCategoryName &&
      other.quantity == quantity;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      price.hashCode ^
      imageUrl.hashCode ^
      brand.hashCode ^
      produitCategoryName.hashCode ^
      quantity.hashCode;
  }
<<<<<<< Updated upstream
 }
=======
}
>>>>>>> Stashed changes
