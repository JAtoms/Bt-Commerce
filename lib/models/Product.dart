import 'package:flutter/material.dart';

class Product {
  final int id;
  final int discountQuantity;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.discountQuantity,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our Face Masks

List<Product> faceMasks = [
  Product(
    id: 1,
    images: [
      'assets/images/mask3.png',
      'assets/images/mask5.png',
      'assets/images/mask6.png',
      'assets/images/mask7.png',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Premium surgical face masks',
    price: 2.50,
    discountQuantity: 2,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
      id: 2,
      images: [
        'assets/images/mask1.png',
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      title: 'Brown surgical face mask',
      price: 2.50,
      discountQuantity: 2,
      description: description,
      rating: 4.1,
      isPopular: true),
  Product(
      id: 3,
      images: [
        'assets/images/mask2.png',
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white
      ],
      title: 'White surgical face mask',
      price: 2.50,
      discountQuantity: 2,
      description: description,
      rating: 4.1,
      isFavourite: true,
      isPopular: true),
  Product(
    id: 4,
    images: [
      'assets/images/mask4.png',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Premium cotton navy face mask',
    price: 2.50,
    discountQuantity: 2,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

// Our Toilet Rolls

List<Product> toiletRoll = [
  Product(
    id: 5,
    images: [
      'assets/images/tissue1.png',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Soft toilet paper (2Ply)',
    price: 65,
    discountQuantity: 6,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
      id: 6,
      images: [
        'assets/images/tissue2.png',
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      title: 'Eco friendly soft toilet paper',
      price: 65,
      discountQuantity: 6,
      description: description,
      rating: 4.1,
      isPopular: true),
  Product(
      id: 7,
      images: [
        'assets/images/tissue3.png',
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white
      ],
      title: 'Disposable eco toilet paper',
      price: 65,
      discountQuantity: 6,
      description: description,
      rating: 4.1,
      isFavourite: true,
      isPopular: true),
  Product(
    id: 8,
    images: [
      'assets/images/tissue4.png',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Soft baby glow toilet paper',
    price: 65,
    discountQuantity: 6,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    'Smooth factory prepared face mask. Made of hand made cotton.';

const String tissueDescription =
    'Smooth factory prepared toilet paper. Made from Egyptian plant.';
