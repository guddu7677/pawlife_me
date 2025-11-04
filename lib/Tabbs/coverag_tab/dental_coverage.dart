import 'package:flutter/material.dart';

class DentalCoverage extends StatefulWidget {
  const DentalCoverage({super.key});

  @override
  State<DentalCoverage> createState() => _DentalCoverageState();
}

class _DentalCoverageState extends State<DentalCoverage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/fed.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                    'Dog & Cat Dental Coverage',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                 SizedBox(height: 12),
                 Text(
                    'All plans include coverage for tooth extractions, while dental cleanings can be covered with an optional wellness add-on. Additionally, pet owners with multiple pets may be eligible for a 10% discount.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                   SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildFeatureCard(
                        icon: Icons.medical_services,
                        title: 'Prevents Dental Disease',
                        description:
                            'Brushing and cleanings reduce plaque and gum problems.',
                      ),
                      _buildFeatureCard(
                        icon: Icons.masks,
                        title: 'Improves Breath',
                        description:
                            'Keeps your pet’s mouth fresh and healthy.',
                      ),
                    ],
                  ),

                   SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildFeatureCard(
                        icon: Icons.local_hospital,
                        title: 'Reduces Vet Costs',
                        description:
                            'Early care helps avoid expensive treatments.',
                      ),
                      _buildFeatureCard(
                        icon: Icons.favorite,
                        title: 'Supports Overall Health',
                        description:
                            'Healthy teeth improve overall well-being.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.25),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 40),
         SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
         SizedBox(height: 6),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
