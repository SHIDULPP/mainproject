import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:newproject/screens/categories.dart';
import 'package:newproject/screens/products.dart';
import 'package:newproject/screens/profile_page.dart';
import 'package:newproject/screens/searchscreen.dart';
import 'package:newproject/screens/sellpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = const SizedBox(
      height: 250,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          
          AssetImage('assets/images/carousel13.jpg'),
          AssetImage('assets/images/carousel14.jpg'),
          AssetImage('assets/images/carousel15.jpg'),
          AssetImage('assets/images/carousel11.jpg'),
          AssetImage('assets/images/carousel12.jpg'),
        ],
        autoplay: false,
        autoplayDuration: Duration(seconds: 3),
        animationCurve: Curves.fastOutSlowIn,
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotColor: Colors.grey,
      ),
    );
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
                  child: Image(
                    image: AssetImage(
                      "assets/logo.png",
                    ),
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                width: 15,
              ),
              Text(
                'Recommerce',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
            ],
          ),
          actions: [
            Icon(Icons.location_city)
          ],
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
        /*drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('Shidul'),
                accountEmail: const Text('shd@gmail.com'),
                currentAccountPicture: GestureDetector(
                  //onTap: //() => , Navigate to profile page
                  child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 55,
                    ),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                title: Text('Orders'),
                subtitle: Text('hhh'),
              ),
              const ListTile(
                leading: Icon(Icons.shopping_cart_outlined),
                title: Text('Cart'),
              ),
              const ListTile(
                leading: Icon(Icons.category_outlined),
                title: Text('Categories'),
              ),
              const ListTile(
                leading: Icon(Icons.favorite_border_outlined),
                title: Text('Favorites'),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              const ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
                title: Text('About Us'),
              ),
            ],
          ),
        ),*/
        body: ListView(
          children: [
            //image carousel
            imageCarousel,

            //categories text
            const Row(
              children: [
                Icon(Icons.category_outlined),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),

            //horizontal list
            const HorizontalList(),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Recommended products',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 320,
              child: Products(),
            )
          ],
        ),

        //bottom navigation bar
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              elevation: 10,
              currentIndex: _selectIndex,
              onTap: _itemTaped,
              items: <BottomNavigationBarItem>[
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 29,
                      color: Colors.black,
                    ),
                    label: "Home"),

                BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                      },
                      child: const Icon(
                        Icons.search,
                        size: 29,
                        color: Colors.black,
                      ),
                    ),
                    label: "Explore"),
                // BottomNavigationBarItem(
                //    icon: Icon(Icons.search, color: Colors.black),label: "Search"),
                BottomNavigationBarItem(
                    icon: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SellPage()));
                        },
                        child: const Icon(Icons.add,
                            size: 29, color: Colors.black)),
                    label: "Sell"),
                //  BottomNavigationBarItem(
                //  icon: Icon(Icons.category_outlined), label: "Categories"),
                BottomNavigationBarItem(
                  icon: GestureDetector(
                      child: const Icon(Icons.message,
                          size: 29, color: Colors.black)),
                  label: "Chat",
                ),

                BottomNavigationBarItem(
                    icon: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                        },
                        child: const Icon(Icons.person,
                            size: 29, color: Colors.black)),
                    label: "Account"),
              ]),
        ),
      );
    
  }

  void _itemTaped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}
