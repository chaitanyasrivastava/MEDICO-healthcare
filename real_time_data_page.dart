import 'package:flutter/material.dart';

class RealTimeDataPage extends StatelessWidget {
  const RealTimeDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real-time Health Data'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ECG Data
            simpleDataBox('ECG:', '---'),  // Replace '---' with real-time ECG data

            const SizedBox(height: 20),

            // Temperature Data
            simpleDataBox('Temperature:', '---'),  // Replace '---' with real-time Temperature data

            const SizedBox(height: 20),

            // Pulse Data
            simpleDataBox('Pulse Rate:', '---'),  // Replace '---' with real-time Pulse data
          ],
        ),
      ),
    );
  }

  // Helper method for simpler data display
  Widget simpleDataBox(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          value, // Replace with the actual data value in real-time
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
