import 'dart:ui';
import 'package:flutter/material.dart';

class PetInsuranceCover extends StatefulWidget {
  const PetInsuranceCover({super.key});

  @override
  State<PetInsuranceCover> createState() => _PetInsuranceCoverState();
}

class _PetInsuranceCoverState extends State<PetInsuranceCover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ======= Hero Section =======
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
                  height: 300,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'What’s Covered by Pet Insurance?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Every pet is different, and their healthcare needs are too. PawlifyMe provides flexible and affordable pet insurance plans that you can tailor to your budget and your pet’s unique lifestyle.',
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

            const SizedBox(height: 32),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Expanded(
                        child: CoverageCard(
                          icon: Icons.emergency_outlined,
                          title: "Accident Coverage",
                          description:
                              "Protection for your pet in case of unexpected accidents or injuries, giving you peace of mind when life takes a sudden turn.",
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CoverageCard(
                          icon: Icons.sick_outlined,
                          title: "Illness Coverage",
                          description:
                              "Helps cover exams, treatments, surgeries, and medications for eligible illnesses to ensure your pet’s recovery.",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Expanded(
                        child: CoverageCard(
                          icon: Icons.health_and_safety_outlined,
                          title: "Wellness Coverage",
                          description:
                              "Optional Preventive Care covers check-ups, vaccinations, and routine visits to keep your pet healthy year-round.",
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CoverageCard(
                          icon: Icons.pets_outlined,
                          title: "Behavioral Coverage",
                          description:
                              "Support for behavioral issues like anxiety or aggression, helping your pet live a balanced and happy life.",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Essential Tips for Smart Pet Owners",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Here are some helpful tips to get the best out of your pet insurance and ensure your furry friend stays happy and cared for.",
                    style: TextStyle(fontSize: 16, height: 1.4),
                  ),
                  const SizedBox(height: 28),

                  _TipItem(
                    icon: Icons.timer_outlined,
                    title: "Understanding the Waiting Period",
                    description:
                        "Waiting periods start the day after you purchase your policy and continue until your coverage becomes effective. Any illness or injury before this time is considered pre-existing and not covered.",
                  ),
                  const SizedBox(height: 20),

                  _TipItem(
                    icon: Icons.local_hospital,
                    title: "Freedom to Choose Your Vet",
                    description:
                        "With PawlifyMe, you can visit any licensed vet in the U.S. or Canada — including specialists and emergency clinics. No network restrictions apply.",
                  ),
                  const SizedBox(height: 20),

                  _TipItem(
                    icon: Icons.vaccines_outlined,
                    title: "Preventive Care Coverage",
                    description:
                        "PawlifyMe's optional preventive care add-ons start just 24 hours after purchase, covering check-ups, dental cleanings, and vaccinations to keep your pet in top shape.",
                  ),
                  const SizedBox(height: 20),

                  _TipItem(
                    icon: Icons.assignment_turned_in_outlined,
                    title: "Easy Claim Submission",
                    description:
                        "After your vet visit, submit your claim through our app or member center with the required documentation. Most claims are processed within three days with fast reimbursement.",
                  ),
                ],
              ),
            ),

             SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class CoverageCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const CoverageCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.green, size: 50),
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class _TipItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _TipItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.green, size: 28),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
