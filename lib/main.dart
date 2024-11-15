import 'package:flutter/material.dart';

void main() {
  runApp(BloodDonorApp());
}

class BloodDonorApp extends StatelessWidget {
  const BloodDonorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood Donor App',
      home: NeedBloodApp(),
    );
  }
}

class NeedBloodApp extends StatelessWidget {
  const NeedBloodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Need Blood')),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:250),
            child: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey.shade700,
                child: Icon(
                  Icons.bloodtype_outlined,
                  size: 100,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Donate Blood',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
