import 'package:flutter/material.dart';

import '../components/Logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 200),
          Logo("Care Soft"),
          SizedBox(height: 50),
          TextButton(onPressed: () {}, child: Text("Get Started!")),
          SizedBox(height: 20),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"))
        ],
      ),
    );
  }
}
