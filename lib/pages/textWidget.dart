import 'package:flutter/material.dart';
import 'secondPage.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Text Widget', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.red,
      ),

      //======================================================================================================================================================= 

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 175,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFBABECC),
                      offset: Offset(10, 10),
                      blurRadius: 25,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-10, -10),
                      blurRadius: 25,
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    Center(
                      child: Text('Buksan mo!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ),

                     Center(
                      child: Text('Buksan mo!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              //======================================================================================================================================================= 

              Container(
                width: 175,
                margin: EdgeInsets.only(left: 15.0),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFBABECC),
                      offset: Offset(10, 10),
                      blurRadius: 25,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-10, -10),
                      blurRadius: 25,
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    Center(
                      child: Text('Jonnie Walker Red Label!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ),

                    Center(
                      child: Text('Jonnie Walker Red Label!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //======================================================================================================================================================= 
          
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SecondPage()),
            ),
            child: const Text("Next"),
          )
        ],
      ),
    );
  }
}