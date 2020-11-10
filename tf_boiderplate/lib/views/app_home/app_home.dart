import 'package:flutter/material.dart';
import 'package:tf_boiderplate/_routing/routes.dart';
import 'package:tf_boiderplate/utils/constants.dart';
import 'home/home.dart';
import 'my_cart/my_cart.dart';
import 'personal/personal.dart';

class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    CartScreen(),
    PersonalPage(Colors.green),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0XFF558948),
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        elevation: 0.0,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Platter'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Personal',
          )
        ]);
  }
}
