import 'package:flutter/material.dart';
import 'package:prato_final/pages/favorito_page.dart';
import 'package:prato_final/pages/home_page.dart';
import 'package:prato_final/pages/user.dart';

class BottomNavigatorPage extends StatefulWidget {
  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    HomePage(),
    FavoritoPage(),
    UserPage(),
  ];

  int _itemSelected = 0;

  void _onPageChanged(int index) {
    setState(() {
      _itemSelected = index;
    });
  }

  void _onTapped(int itemSelected) {
    _pageController.jumpToPage(itemSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _itemSelected == 0 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  color: _itemSelected == 0 ? Colors.blue : Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: _itemSelected == 1 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "Favoritos",
              style: TextStyle(
                  color: _itemSelected == 1 ? Colors.blue : Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle_sharp,
              color: _itemSelected == 2 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "User",
              style: TextStyle(
                  color: _itemSelected == 2 ? Colors.blue : Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
