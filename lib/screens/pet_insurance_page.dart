import 'package:flutter/material.dart';
import 'package:pawlife_me/Tabbs/pet_insurance_tab/cat_insurance.dart';
import 'package:pawlife_me/Tabbs/pet_insurance_tab/dog_insurance.dart';
import 'package:pawlife_me/Tabbs/pet_insurance_tab/kitten_insurance.dart';
import 'package:pawlife_me/Tabbs/pet_insurance_tab/puppy_insurance.dart';

class PetInsurancePage extends StatefulWidget {
  const PetInsurancePage({super.key});

  @override
  State<PetInsurancePage> createState() => _PetInsurancePageState();
}

class _PetInsurancePageState extends State<PetInsurancePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Color> _tabColors = [
    Colors.orange.shade100, 
    Colors.blue.shade100,   
    Colors.pink.shade100,   
    Colors.green.shade100,  
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {}); 
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _tabColors[_tabController.index],
      appBar: AppBar(
        title: const Text(
          "Pet Insurance",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey.shade400,
          tabs: const [
            Tab(text: "Cat Insurance"),
            Tab(text: "Dog Insurance"),
            Tab(text: "Kitten Insurance"),
            Tab(text: "Puppy Insurance"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
         CatInsurance(),
         DogInsurance(),
          KittenInsurance(),
          PuppyInsurance(),
        ],
      ),
    );
  }
}
