import 'package:flutter/material.dart';
import 'package:pawlife_me/screens/advice_page.dart';
import 'package:pawlife_me/screens/contact_us_page.dart';
import 'package:pawlife_me/screens/coverage_page.dart';
import 'package:pawlife_me/screens/home_page.dart';
import 'package:pawlife_me/screens/pet_insurance_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    PetInsurancePage(),
    CoveragePage(),
    AdvicePage(),
    ContactUsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: "Pet Insurance"),
          BottomNavigationBarItem(icon: Icon(Icons.health_and_safety), label: "Coverage"),
          BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates), label: "Advice"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Contact Us"),
        ],
      ),
    );
  }
}
