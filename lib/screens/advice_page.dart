import 'package:flutter/material.dart';
import 'package:pawlife_me/Tabbs/advice_tab/cat_breeds.dart';
import 'package:pawlife_me/Tabbs/advice_tab/compare_providers.dart';
import 'package:pawlife_me/Tabbs/advice_tab/dog_breeds.dart';
import 'package:pawlife_me/Tabbs/advice_tab/pet_insurence_cover.dart';

class AdvicePage extends StatefulWidget {
  const AdvicePage({super.key});

  @override
  State<AdvicePage> createState() => _AdvicePageState();
}

class _AdvicePageState extends State<AdvicePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Color> _tabColors = [
    Colors.blue.shade100,  
    Colors.pink.shade100,   
    Colors.green.shade100, 
    Colors.orange.shade100, 
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
          "Pet Advice",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            color: Colors.black87,
            child: TabBar(
              controller: _tabController,
              isScrollable: true, 
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey.shade400,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              tabs: const [
                Tab(text: "Dog Breeds"),
                Tab(text: "Cat Breeds"),
                Tab(text: "Pet Insurance Cover"),
                Tab(text: "Compare Providers"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:  [
        DogBreeds(),
       CatBreeds(),
       PetInsurenceCover(),
        CompareProviders()

        ],
      ),
    );
  }
}

