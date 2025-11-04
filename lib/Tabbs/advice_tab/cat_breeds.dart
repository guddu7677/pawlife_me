import 'dart:ui';

import 'package:flutter/material.dart';

class CatBreeds extends StatefulWidget {
  const CatBreeds({super.key});

  @override
  State<CatBreeds> createState() => _CatBreedsState();
}

class _CatBreedsState extends State<CatBreeds> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/fed.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(color: Colors.black.withOpacity(0.45)),
                  ),
                ),
                Container(
                  height: 280,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cat Breeds',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Looking for your new canine companion? Explore PawlifyMe’s Cat breed profiles to learn about different breeds before bringing a pet home. Discover how to care for each breed, understand their personality, energy levels, grooming needs, cost of care, and, most importantly, vet expenses.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              color:  Color(0xFF8CE1C9),
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Popular Cat Breeds",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.1,
                    ),
                  ),
                  const SizedBox(height: 20),

                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _buildBreedItem('Bombay Cat', 'assets/images/bombay.webp'),
                      _buildBreedItem('British shorthair', 'assets/images/british.webp'),
                      _buildBreedItem('Burmese Cat', 'assets/images/burmese.webp'),
                      _buildBreedItem('Himalayan Cat', 'assets/images/himalya.webp'),
                      _buildBreedItem('Maine Coon', 'assets/images/maine-coon.webp'),
                      _buildBreedItem('Manx Cat', 'assets/images/manx.webp'),
                      _buildBreedItem('Munchin Kin', 'assets/images/munchinkin.webp'),
                      _buildBreedItem('Norwegian Forest Cat', 'assets/images/norwegian.webp'),
                    ],
                  ),
                ],
              ),
            ),

           SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                itemCount: _featuredBreeds.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // two per row
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.8, // controls height vs width ratio
                ),
                itemBuilder: (context, index) {
                  final breed = _featuredBreeds[index];
                  return _buildInfoCard(breed['title']!, breed['image']!, breed['desc']!);
                },
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildBreedItem(String name, String imagePath) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
         SizedBox(height: 8),
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoCard(String title, String imagePath, String description) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imagePath,
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
               SizedBox(height: 6),
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 13,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, String>> _featuredBreeds = [
    {
      'title': 'Abyssinian',
      'image': 'assets/images/abasinian.jpg',
      'desc':
          'The Abyssinian is a domestic short-haired cat which holds its origin to the Indian ocean, in parts of South-east Asia. T',
    },
    {
      'title': 'American Bobtail',
      'image': 'assets/images/american.webp',
      'desc':
          'American Bobtail has a wild distinctive look but not a wild temperament. Bobtails are playful energetic cats',
    },
     {
      'title': 'American Curl',
      'image': 'assets/images/american-carl.webp',
      'desc':
      "A Curl's signature characteristic is his unique ears, which curl backward and do not stand up"
    },
     {
      'title': 'American Shorthair',
      'image': 'assets/images/american-shorthair.webp',
      'desc':
          'The American shorthair is a strong, rugged breed that can adapt to almost any family and lifestyle.hese cats are friendly and easy-going.',
    },
     {
      'title': 'Ashera',
      'image': 'assets/images/asera.webp',
      'desc':
          'The Ashera cat is an exotic looking large cat breed with a tall body and pointed ears. Ashera look like Huskies, but they have a different',
    }, {
      'title': 'Bambino',
      'image': 'assets/images/bambino.webp',
      'desc':
          'The Bambino, Italian word for ‘Baby’, is a mutated cat breed of between a Sphynx and a Munchkin.he unique features that distinguish a Bambino are short legs upright ears and a hairless body.',
    },
  ];
}
