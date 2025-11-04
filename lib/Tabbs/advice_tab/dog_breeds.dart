import 'dart:ui';
import 'package:flutter/material.dart';

class DogBreeds extends StatefulWidget {
  const DogBreeds({super.key});

  @override
  State<DogBreeds> createState() => _DogBreedsState();
}

class _DogBreedsState extends State<DogBreeds> {
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
                    'assets/images/puppy.jpg',
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
                        'Dog Breeds',
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
                        'Looking for your new canine companion? Explore Spot’s dog breed profiles to learn about different breeds before bringing a pet home. Discover how to care for each breed, understand their personality, energy levels, grooming needs, cost of care, and, most importantly, vet expenses.',
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
                    "Popular Dog Breeds",
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
                      _buildBreedItem('Golden Retriever', 'assets/images/golden.webp'),
                      _buildBreedItem('Labrador Retriever', 'assets/images/labrar.webp'),
                      _buildBreedItem('German Shepherd', 'assets/images/germa.webp'),
                      _buildBreedItem('French Bulldog', 'assets/images/french.webp'),
                      _buildBreedItem('Border Collie', 'assets/images/border.webp'),
                      _buildBreedItem('Cane Corso', 'assets/images/cane.webp'),
                      _buildBreedItem('Belgian Malinois', 'assets/images/belgian.webp'),
                      _buildBreedItem('Beagle', 'assets/images/beargle.webp'),
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
      'title': 'Affenpinscher',
      'image': 'assets/images/affen.webp',
      'desc':
          'A live monkey type toy would probably be the best way to describe the Affenpinscher dog breed.',
    },
    {
      'title': 'Afghan Hound',
      'image': 'assets/images/afghan.webp',
      'desc':
          'The Afghan Hound epitomizes elegance. This rare, ancient breed of dog possesses a look that is unmatched.',
    },
     {
      'title': 'Airedale Terrier',
      'image': 'assets/images/airedle.webp',
      'desc':
          'Airedales are indeed the largest of the terrier breeds, dubbed the King of Terriers. Dogs of this breed',
    },
     {
      'title': 'Akita',
      'image': 'assets/images/akita.webp',
      'desc':
          'The Akita is a large sturdy breed with a broad head and a short muzzle. They also have a muscular body with small eyes and upright ears.',
    },
     {
      'title': 'Alaskan Klee',
      'image': 'assets/images/alaskan.webp',
      'desc':
          'Alaskan Klee Kai’s are companion dogs rather than working animals that pull sleds. Alaskan Klee Kai’s look like Huskies, but they have a different',
    }, {
      'title': 'Alaskan Malamute',
      'image': 'assets/images/alsakan_m.webp',
      'desc':
          'There’s a lot more involved in being a good pet parent than it might seem at first. Here at Spot Pet Insurance, we believe',
    },
  ];
}
