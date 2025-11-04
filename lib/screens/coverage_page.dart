import 'package:flutter/material.dart';
import 'package:pawlife_me/Tabbs/coverag_tab/accident_coverage.dart';
import 'package:pawlife_me/Tabbs/coverag_tab/dental_coverage.dart';
import 'package:pawlife_me/Tabbs/coverag_tab/emergency_coverage.dart';
import 'package:pawlife_me/Tabbs/coverag_tab/illness_coverage.dart';
import 'package:pawlife_me/Tabbs/coverag_tab/wellness_privention.dart';

class CoveragePage extends StatefulWidget {
  const CoveragePage({super.key});

  @override
  State<CoveragePage> createState() => _CoveragePageState();
}

class _CoveragePageState extends State<CoveragePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Color> _tabColors = [
    Colors.teal.shade100,  
    Colors.orange.shade100, 
    Colors.red.shade100,    
    Colors.purple.shade100, 
    Colors.green.shade100, 
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
          "Coverage Plans",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
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
              tabs: [
                Tab(text: "Illness Coverage"),
                Tab(text: "Dental Coverage"),
                Tab(text: "Accident Coverage"),
                Tab(text: "Emergency Coverage"),
                Tab(text: "Wellness & Prevention"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          IllnessCoverage(),
          DentalCoverage(),
          AccidentCoverage(),
          EmergencyCoverage(),
          WellnessPrevention(),  
        ],
      ),
    );
  }
}

