import 'package:flutter/material.dart';

class CatInsurance extends StatefulWidget {
  const CatInsurance({super.key});

  @override
  State<CatInsurance> createState() => _CatInsuranceState();
}

class _CatInsuranceState extends State<CatInsurance> {
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
              'assets/images/cat.jpg',
              fit: BoxFit.cover,
            ),
          ),

         Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),

          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'Best Cat Insurance Plan',
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
                    'Protect your cat with affordable coverage\nand trusted care.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                 SizedBox(height: 20),
                 Text(
                    "Plan Options",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                   SizedBox(height: 16),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF003E52),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        "Accident & Illness Plan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    physics:  NeverScrollableScrollPhysics(),
                    itemCount: coverageItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 3, 
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white30),
                        ),
                        child: Center(
                          child: Text(
                            coverageItems[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                                     SizedBox(height: 16),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF003E52),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        "Accident Only Plan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    physics:  NeverScrollableScrollPhysics(),
                    itemCount: accidentOnlyItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 3, 
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white30),
                        ),
                        child: Center(
                          child: Text(
                            accidentOnlyItems[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
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
}
