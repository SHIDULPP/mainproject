import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          title: const Row(
            children: [
              SizedBox(
                height: 35,
                width: 35,
                child: Image(image: AssetImage("assets/logo.png",),fit: BoxFit.contain,)),
                SizedBox(
                  width: 15,
                ),
               Text(
                'Recommerce',
                style: TextStyle(fontStyle: FontStyle.italic,fontWeight:  FontWeight.bold,fontSize: 30,
              ),)
            ],
          ),
          /*actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.more_vert),
            ),
          ],*/
          elevation: 10,
          shadowColor: Colors.grey,
        ),
        body: Column(
          children: [ 
            SizedBox(
              height: 10,
            ),
            
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
          ),]
        ),
    );
  }
}