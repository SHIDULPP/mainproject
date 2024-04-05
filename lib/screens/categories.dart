import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({super.key});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:const [
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Books',),
          Categories(image_Location: 'assets/images/categories/catphone.png',image_Caption: 'Phones',),
          Categories(image_Location: 'assets/images/categories/categoryshoe.jpeg',image_Caption: 'Shoes',),
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Book',),
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Book',),
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Book',),
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Book',),
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Book',),
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Book',),
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Book',),
          Categories(image_Location: 'assets/images/categories/categorybook.png',image_Caption: 'Book',),



          
        ],
      ),
      
      
    );

  }
}

class Categories extends StatelessWidget {
  final String image_Location;
  final String image_Caption;
  const Categories({required this.image_Caption, required this.image_Location, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5,left:5 ),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          color: const Color.fromARGB(255, 191, 202, 211),
          child: ListTile(
            title: Image.asset(image_Location,
            width: 100,
            height: 80,),
            subtitle: Container(
              alignment: Alignment.topCenter,child: Text(image_Caption,style: const TextStyle(fontWeight: FontWeight.bold),)),
          ),
        ),
      ),
    );
  }
}
