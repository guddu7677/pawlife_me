import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _dateController = TextEditingController();
  String? _selectedService;

  // Background animation
  final List<List<Color>> _gradientList = [
    [Colors.tealAccent.shade100, Colors.white],
    [Colors.blue.shade100, Colors.teal.shade50],
    [Colors.purple.shade50, Colors.teal.shade100],
    [Colors.orange.shade50, Colors.blue.shade100],
  ];
  int _currentGradient = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Safe start for timer after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        if (!mounted) return;
        setState(() {
          _currentGradient = (_currentGradient + 1) % _gradientList.length;
        });
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _nameController.dispose();
    _numberController.dispose();
    _emailController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (pickedDate != null) {
      setState(() {
        _dateController.text = DateFormat('dd/MM/yyyy').format(pickedDate);
      });
    }
  }

  void _selectService() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Wrap(
            children: [
              const Center(
                child: Text(
                  'Select Service',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.pets, color: Colors.teal),
                title: const Text('Pet Training'),
                onTap: () {
                  setState(() => _selectedService = 'Pet Training');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.pets_outlined, color: Colors.orange),
                title: const Text('Cat Training'),
                onTap: () {
                  setState(() => _selectedService = 'Cat Training');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.pets_rounded, color: Colors.blue),
                title: const Text('Dog Training'),
                onTap: () {
                  setState(() => _selectedService = 'Dog Training');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final gradient = _gradientList[_currentGradient];

    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 3),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Protect Your Pet’s Health with Pawlify',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Trusted Coverage for Your Furry Friends',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Affordable insurance plans for dogs and cats with coverage you can trust. Get up to 90% cash back on vet bills, access 24/7 telehealth, and visit any licensed vet in the country.",
                  style: TextStyle(fontSize: 14, color: Colors.black54, height: 1.4),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 25),

            Container( height: 250, width: double.infinity, child: Stack( alignment: Alignment.center, children: [ Positioned( child: Image.asset( 'assets/images/banner.png', fit: BoxFit.cover, ), ), Positioned.fill( child: Image.asset( 'assets/images/Smiling-lady-home-banner.png', fit: BoxFit.contain, ), ), ], ), ),
              const SizedBox(height: 30),

              // Form Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Text(
                        "Book a Service",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _numberController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _dateController,
                        readOnly: true,
                        onTap: _pickDate,
                        decoration: const InputDecoration(
                          labelText: 'Select Date',
                          prefixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email Address',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: _selectService,
                        borderRadius: BorderRadius.circular(8),
                        child: InputDecorator(
                          decoration: const InputDecoration(
                            labelText: 'Select Service',
                            prefixIcon: Icon(Icons.miscellaneous_services),
                            border: OutlineInputBorder(),
                          ),
                          child: Text(
                            _selectedService ?? 'Choose a service',
                            style: TextStyle(
                              color: _selectedService == null
                                  ? Colors.grey
                                  : Colors.black87,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal.shade700,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Form submitted successfully!'),
                              ),
                            );
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
