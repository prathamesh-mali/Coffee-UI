import 'package:coffee_app_ui/features/cart/cart_screen.dart';
import 'package:coffee_app_ui/features/home/homepage.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    // DetailScreen(),
    CartScreen(),
    // Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   color: Color.fromARGB(255, 13, 10, 21),
    //   child: Center(
    //     child: Text(
    //       'Cart',
    //       style: TextStyle(
    //           color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
    //     ),
    //   ),
    // ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 13, 10, 21),
      child: Center(
        child: Text(
          'Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 13, 10, 21),
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
