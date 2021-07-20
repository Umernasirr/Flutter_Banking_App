import 'package:banking_app/pages/home_page.dart';
import 'package:banking_app/pages/transactions_page.dart';
import 'package:flutter/material.dart';

class MyBottomNavbar extends StatefulWidget {
  MyBottomNavbar({Key? key}) : super(key: key);

  @override
  _MyBottomNavbarState createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    TransactionsPage(),
    HomePage(),
  ];

  void _onItemTapped(int index) => {
        setState(() => {_selectedIndex = index})
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).backgroundColor,
          unselectedItemColor: Colors.white54,
          selectedItemColor: Theme.of(context).primaryColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
