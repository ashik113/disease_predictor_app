import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedSymptom1 = 'Choose one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text('Disease Predictor App using flutter'),
            ),
            DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: _selectedSymptom1,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                _selectedSymptom1 = newValue!;
              },
            ),
          ],
        ),
      ),
    );
  }
}
