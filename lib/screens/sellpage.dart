import 'package:flutter/material.dart';

class SellPage extends StatefulWidget {
  const SellPage({super.key});

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select you item here'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 2.0, style: BorderStyle.solid)),
            padding: const EdgeInsets.all(8),
            //color: Colors.teal[100],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.phone), Text("Phone")],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 2.0, style: BorderStyle.solid)),
            padding: const EdgeInsets.all(8),
            //color: Colors.teal[100],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.car_crash_outlined), Text("Car")],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 2.0, style: BorderStyle.solid)),
            padding: const EdgeInsets.all(8),
            //color: Colors.teal[100],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.apartment_outlined), Text("Properties")],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                      style: BorderStyle.solid)),
              padding: const EdgeInsets.all(8),
              //color: Colors.teal[100],
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.electric_moped), Text("Home Appliances")],
              ) //Center(child: Text("Phone")),
              ),
              
              
          
          
          
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 2.0, style: BorderStyle.solid)),
            padding: const EdgeInsets.all(8),
            //color: Colors.teal[100],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.book), Text("Books")],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 2.0, style: BorderStyle.solid)),
            padding: const EdgeInsets.all(8),
            //color: Colors.teal[100],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.bike_scooter), Text("Bike")],
            ),
          ),
        ],
      ),
    );
  }
}
