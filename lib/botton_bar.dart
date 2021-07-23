import 'package:flutter/material.dart';
import 'package:mali_safi/consts/colors.dart';
import 'package:mali_safi/screens/add_screen.dart';

import 'package:mali_safi/screens/categoiesScreen.dart';
import 'package:mali_safi/screens/favourite.dart';
import 'package:mali_safi/screens/home.dart';
import 'package:mali_safi/screens/explore.dart';

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
        'page': Feeds(),
      },
      {
        'page': AddScreen(),
      },
      {
        'page': CategoriesScreen(),
      },
      {
        'page': FavouriteScreen(),
      },
    ];
    super.initState();
  }

  int _selectedIndex = 0;
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
              unselectedItemColor: ColorsConsts.subTitle,
              selectedItemColor: ColorsConsts.black,
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.home),
                    tooltip: 'Home',
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.discover),
                    tooltip: 'Explore',
                    label: 'Explore'),
                BottomNavigationBarItem(
                  icon: Icon(
                    MyAppIcons.add,
                    size: 35,
                  ),
                  tooltip: 'Add',
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.explore),
                    tooltip: 'Categories',
                    label: 'Categories'),
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.favorite),
                    tooltip: 'Favorite',
                    label: 'Favorite'),
              ]),
        ),
      ),
    );
  }
}
