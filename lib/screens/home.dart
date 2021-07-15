import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mali_safi/consts/colors.dart';
import 'package:mali_safi/widgets/auction.dart';
import 'package:mali_safi/widgets/hot_category.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _carouselImages = [
    'assets/images/CatBeauty.jpg',
    'assets/images/CatFurniture.jpg',
    'assets/images/CatPhones.png',
    'assets/images/CatShoes.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Carousel(
                      boxFit: BoxFit.fill,
                      autoplay: true,
                      animationCurve: Curves.fastOutSlowIn,
                      animationDuration: Duration(milliseconds: 1000),
                      dotSize: 5.0,
                      dotIncreasedColor: ColorsConsts.cartColor,
                      dotBgColor: Colors.transparent,
                      dotPosition: DotPosition.bottomCenter,
                      //dotVerticalPadding: 10.0,
                      showIndicator: true,
                      indicatorBgPadding: 7.0,
                      images: [
                        AssetImage(_carouselImages[0]),
                        AssetImage(_carouselImages[1]),
                        AssetImage(_carouselImages[2]),
                        AssetImage(_carouselImages[3]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
