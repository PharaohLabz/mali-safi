import 'package:flutter/material.dart';
import 'package:mali_safi/screens/cart.dart';
import 'package:mali_safi/screens/favourite.dart';
import 'package:mali_safi/screens/home.dart';
import 'package:mali_safi/screens/search.dart';
import 'package:mali_safi/screens/user_info.dart';

import 'consts/my_icons.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key key}) : super(key: key);

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  // List _pages = [
  //   HomeScreen(),
  //   FavouriteScreen(),
  //   SearchScreen(),
  //   CartScreen(),
  //   UserInfoScreen(),
  // ];
  List<Map<String, Object>> _pages;

  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
      },
      {
        'page': SearchScreen(),
      },
      {
        'page': CartScreen(),
      },
      {
        'page': FavouriteScreen(),
      },
      {
        'page': UserInfoScreen(),
      },
    ];
    super.initState();
  }

  int _selectedIndex = 4;
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        shape: CircularNotchedRectangle(),
        child: Container(
          //height: kBottomNavigationBarHeight,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.1),
            ),
          ),
          child: BottomNavigationBar(
              onTap: _selectedPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.black.withOpacity(0.8),
              selectedItemColor: Colors.grey,
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.home),
                    tooltip: 'Home',
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.search),
                    tooltip: 'Search',
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.bag), tooltip: 'Cart', label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.favorite),
                    tooltip: 'Favorite',
                    label: 'Favorite'),
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.user),
                    tooltip: 'Account',
                    label: 'Account'),
              ]),
        ),
      ),
    );
  }
}
