import 'dart:ui';
import 'package:flutter/material.dart';

class CompareProviders extends StatefulWidget {
  const CompareProviders({super.key});

  @override
  State<CompareProviders> createState() => _CompareProvidersState();
}

class _CompareProvidersState extends State<CompareProviders> {
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
                        'Compare Pet Insurance Providers',
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
                        'Explore our detailed comparison to see how PawlifyMe stacks up against other pet insurance options. Our guide highlights key differences and benefits, helping you make an informed decision for your pet’s health.',
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

            // ======= Placeholder for Comparison Section =======
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: const [
                  Text(
                    'Provider Comparison Coming Soon!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'We’re working to bring you an easy way to compare top pet insurance providers side by side — stay tuned!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
