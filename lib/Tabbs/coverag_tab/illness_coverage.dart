import 'dart:ui';
import 'package:flutter/material.dart';

class IllnessCoverage extends StatefulWidget {
  const IllnessCoverage({super.key});

  @override
  State<IllnessCoverage> createState() => _IllnessCoverageState();
}

class _IllnessCoverageState extends State<IllnessCoverage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/yy.png',
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
                    'Illness Coverage for Dogs & Cats',
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
                    'Exam Fees Covered* for eligible conditions',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                   SizedBox(height: 8),
                   Text(
                    'Microchip Implantation Included with every plan',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                   SizedBox(height: 8),
                   Text(
                    'Flexible Accident-Only Plans also available',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                   SizedBox(height: 30),
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
}
