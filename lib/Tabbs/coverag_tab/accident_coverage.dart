import 'dart:ui';
import 'package:flutter/material.dart';

class AccidentCoverage extends StatefulWidget {
  const AccidentCoverage({super.key});

  @override
  State<AccidentCoverage> createState() => _AccidentCoverageState();
}

class _AccidentCoverageState extends State<AccidentCoverage> {
  final List<String> coverageItems = [
    "Vet Exam Fees",
    "Microchip Implantation",
    "Behavioral Issues",
    "X-rays & Tests",
    "Emergencies & Hospitalizations",
    "Skin, Eye, and Ear Infections",
    "Hereditary Conditions",
    "Digestive Illnesses",
  ];

  final List<String> accidentOnlyItems = [
    "Vet Exam Fees",
    "MRI or CT Scans & X-rays",
    "Surgery & Hospitalizations",
    "IV Fluids & Medications",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/grd.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'Accident-Only Insurance for Cats and Dogs',
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
                    'Reimbursement for Exam Fees for eligible accident-related conditions^',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                   SizedBox(height: 8),
                   Text(
                    'Microchip Coverage Included with every plan',
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
                    'Flexible Accident-Only Plans to protect your furry friends',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),

                 SizedBox(height: 24),
                   Text(
                    "Plan Options",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                 SizedBox(height: 24),
                  _buildPlanHeader("Accident & Illness Plan"),
                 SizedBox(height: 24),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: coverageItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 3,
                    ),
                    itemBuilder: (context, index) {
                      return _buildFeatureCard(coverageItems[index]);
                    },
                  ),
                 SizedBox(height: 24),
                  _buildPlanHeader("Accident Only Plan"),
                 SizedBox(height: 24),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: accidentOnlyItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 3,
                    ),
                    itemBuilder: (context, index) {
                      return _buildFeatureCard(accidentOnlyItems[index]);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanHeader(String title) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF003E52),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white30),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
