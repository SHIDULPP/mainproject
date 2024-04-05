import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
    );
  }
}