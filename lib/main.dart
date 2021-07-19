import 'package:flutter/material.dart';
import 'package:mali_safi/consts/colors.dart';
import 'package:mali_safi/screens/cart.dart';
import 'package:mali_safi/screens/explore.dart';
import 'package:mali_safi/screens/favourite.dart';

import 'botton_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mali Safi',
      theme: ThemeData(
        primaryColor: ColorsConsts.kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomBarScreen(),
      routes: {
        //   '/': (ctx) => LandingPage(),
        //BrandNavigationRailScreen.routeName: (ctx) =>
        // BrandNavigationRailScreen(),
        CartScreen.routeName: (ctx) => CartScreen(),
        Feeds.routeName: (ctx) => Feeds(),
        FavouriteScreen.routeName: (ctx) => FavouriteScreen(),
      },
    );
  }
}
