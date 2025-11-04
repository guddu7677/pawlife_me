import 'dart:ui';
import 'package:flutter/material.dart';

class EmergencyCoverage extends StatefulWidget {
  const EmergencyCoverage({super.key});

  @override
  State<EmergencyCoverage> createState() => _EmergencyCoverageState();
}

class _EmergencyCoverageState extends State<EmergencyCoverage> {
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
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(color: Colors.black.withOpacity(0.4)),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                    'Emergency Coverage for Dogs & Cats',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                 SizedBox(height: 16),
                 Text(
                    'Up to 90% Reimbursement on eligible vet bills',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                 SizedBox(height: 8),
                 Text(
                    'See Any Licensed Vet in the U.S. or Canada',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                 SizedBox(height: 8),
                   Text(
                    '10% Multi-Pet Discount* for additional pets',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                 SizedBox(height: 8),
                   Text(
                    '24/7 Pet Telehealth Support for immediate guidance',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                 SizedBox(height: 24),               
                 Text(
                    "Emergency Coverage for Pets",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 12),
                   Text(
                    "PawlifyMe’s Accident & Illness plan offers comprehensive emergency coverage, helping pet parents manage unexpected accidents or illnesses. It can cover treatment costs for a variety of emergencies, from accidental injuries like broken bones to sudden illnesses such as toxin ingestion.\n\nEmergencies can happen anytime, and vet bills can quickly add up, creating financial stress. Customize your pet’s plan today for peace of mind and reliable protection when you need it most.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                 Text(
                    "Affordable Insurance Plans for Dogs & Cats",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                   SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildPetPlan(
                        icon: Icons.pets,
                        title: "Cat & Kitten Plans",
                        price: "As low as \$9/mo¹",
                      ),
                      _buildPetPlan(
                        icon: Icons.pets, 
                        title: "Dog & Puppy Plans",
                        price: "As low as \$15/mo²",
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
}
Widget _buildPetPlan({
    required IconData icon,
    required String title,
    required String price,
  }) {
    return CircleAvatar(
      radius: 80,
      backgroundColor: Colors.white.withOpacity(0.15),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
           SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
           SizedBox(height: 4),
            Text(
              price,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

