import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 186, 138),
        title: Text("ADMIN PAGE"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              label: Text("식물명"),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("품종"),
            ),
          ),
          Container(
            child: Image(
            image: AssetImage(
              'images/plant.jpeg',
            ),
            ),
          ),
        ],
      ),
    );
  }
}
