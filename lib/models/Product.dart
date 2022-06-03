import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/nasi goreng 1.png",
      "assets/images/nasi goreng 2.png",
      "assets/images/nasi goreng 3.png",
      "assets/images/nasi goreng 4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nasi Goreng",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),

  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Telor Ceplok",
    price: 50.5,
    description: description2,
    rating: 4.1,
    isPopular: true,
  ),

  Product(
    id: 3,
    images: [
      "assets/images/Image Popular Product 3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Sarapan Pagi - Salad",
    price: 36.55,
    description: description3,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  
  Product(
    id: 4,
    images: [
      "assets/images/Image Popular Product 4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Kupat Tahu",
    price: 20.20,
    description: description4,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Berbagai macam varian nasi goreng yang tidak kalah enak dengan nasi goreng dari luar negri yang merupakan olahan sendiri dan …";

const String description2 =
    "Telor Ceplok enak banget nih kalau dijadikan sebagai menu sarapan, makanan siang bahkan makan malam apalagi kalau anda mau menambah 1000 untuk varian rasa kami yang paling hitz yaitu dengan rasa kecap bangau pasti …";

const String description3 =
    "Pagi-Pagi udah bingung aja mau sarapan apa? tenang, jangan risau, mending beli salad aja. enak lho. dan juga setelah kamu makan ini pasti disangka orang kaya …";

const String description4 =
    "Indonesia dikenal dengan banyak ragam suku dan tidak pula dengan ragam makanannya. contohnya kupat tahu ini, cocok dijadikan sebagai sarapan, biar kamu ga bosen dan …";