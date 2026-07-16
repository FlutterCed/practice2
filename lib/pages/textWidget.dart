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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFBABECC),
                      offset: Offset(10, 10),
                      blurRadius: 25
                    ),

                    BoxShadow(
                      color: Color(0xFFBABECC),
                      offset: Offset(-10, -10),
                      blurRadius: 25
                    )
                  ]
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(
                            label: Text('Task')
                          ),

                          DataColumn(
                            label: Text('Action')
                          )
                        ],

                        rows: [
                          DataRow(
                            cells: [
                              DataCell(
                                Text('data')
                              ),

                              DataCell(
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        print("Edit");
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.amber,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Text("Edit"),
                                    ),
                                    const SizedBox(width: 10),
                                    ElevatedButton(
                                      onPressed: () {
                                        print("Delete");
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Text("Delete"),
                                    ),
                                  ],
                                ),
                              )
                            ]
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          
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