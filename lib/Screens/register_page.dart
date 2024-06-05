import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 20, right: 20),
            child: ListView(
              children: [
                SizedBox(height: 20), // Add some space at the top
                ElevatedButton(
                  onPressed: () {
                    // Handle return action
                    Navigator.pop(context); // Assuming you want to go back to the previous screen
                  },
                  child: const Text('Return'),
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.blue,
                  ),
                ),
                SizedBox(
                    height:
                        20), // Add some space between the button and the text fields
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
