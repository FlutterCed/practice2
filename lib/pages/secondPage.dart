import 'package:flutter/material.dart';
import 'textWidget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.blue,
      ),

      //======================================================================================================================================================= 

      body: Column(
        children: [
          Center(
            child: Text("Welcome to the Second Page!", style: TextStyle(fontSize: 24)),
          ),

          //======================================================================================================================================================= 
          
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TextWidget()),
            ),
            child: const Text("Back"),
          )
        ],
      ),
    );
  }
}