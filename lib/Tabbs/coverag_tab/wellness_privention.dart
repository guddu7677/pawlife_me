import 'package:flutter/material.dart';

class WellnessPrevention extends StatefulWidget {
  const WellnessPrevention({super.key});

  @override
  State<WellnessPrevention> createState() => _WellnessPreventionState();
}

class _WellnessPreventionState extends State<WellnessPrevention> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/lay.png',
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                    'Wellness Coverage for Cats & Dogs',
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
                    'Exam Fees Covered*',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 8),
                   Text(
                    'Microchip Implantation Included',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                   SizedBox(height: 8),
                   Text(
                    '\$1,000 in Savings with WeyCare Perks∞',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                   SizedBox(height: 8),
                   Text(
                    'Use Any Licensed Vet in the U.S. or Canada',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                   SizedBox(height: 24),
                   Text(
                    'Why Are Wellness Plans Important for Pets?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                   SizedBox(height: 12),
                   Text(
                    'Regular veterinary check-ups included in wellness plans help detect potential health issues early. Early identification allows for prompt treatment, which can be more effective and often less expensive, keeping your pet healthier over the long term.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.5),
                  ),
                   SizedBox(height: 30),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildFeatureCard(
                        icon: Icons.monitor_heart,
                        title: 'Early Detection',
                        description:
                            'Identifying health issues early allows for prompt intervention, often leading to better treatment outcomes and a healthier life for your pet.',
                      ),
                      _buildFeatureCard(
                        icon: Icons.vaccines,
                        title: 'Disease Prevention',
                        description:
                            'Vaccinations and preventive measures help protect pets from common and serious diseases, supporting long-term health and well-being.',
                      ),
                      _buildFeatureCard(
                        icon: Icons.savings,
                        title: 'Cost Savings',
                        description:
                            'Proactive care helps prevent costly treatments by addressing concerns early, keeping your pet healthier and happier.',
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
      width: 320,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 40),
         SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
         SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
