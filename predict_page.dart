import 'package:flutter/material.dart';

class PredictPage extends StatelessWidget {
  const PredictPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Predict Heart Disease'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title Text
            const Text(
              'Heart Disease Prediction',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Container to Upload PDF
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.redAccent,
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Upload a PDF containing health data:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Logic to import the PDF will go here
                      print('Import PDF button pressed');
                    },
                    icon: const Icon(Icons.picture_as_pdf),
                    label: const Text('Import PDF'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Button to Predict based on PDF
            ElevatedButton(
              onPressed: () {
                // Logic for prediction based on the PDF will go here
                print('Predict from PDF button pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(
                'Predict based on Uploaded PDF',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Button to Predict based on Real-time Data
            ElevatedButton(
              onPressed: () {
                // Logic for prediction based on real-time data will go here
                print('Predict from Real-Time Data button pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(
                'Predict based on Real-Time Data',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
