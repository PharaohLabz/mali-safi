import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mali_safi/consts/colors.dart';
import 'package:mali_safi/consts/my_icons.dart';
import 'package:mali_safi/screens/cart.dart';
import 'package:mali_safi/screens/search.dart';
import 'package:mali_safi/widgets/auction.dart';
import 'package:mali_safi/widgets/feeds_products.dart';
import 'package:mali_safi/widgets/hot_category.dart';
import 'package:mali_safi/widgets/trending_deals.dart';

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
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Feather.menu), onPressed: () {}),
        title: Text('HOME'),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SearchScreen.routeName);
              },
              child: Icon(MyAppIcons.search)),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              child: Icon(MyAppIcons.cart)),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(
              'assets/images/CatLaptops.png',
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Container(
        color: Colors.black.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  // decoration:
                  //     BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Carousel(
                      borderRadius: true,
                      radius: Radius.circular(20),
                      boxFit: BoxFit.fill,
                      autoplay: true,
                      animationCurve: Curves.fastOutSlowIn,
                      animationDuration: Duration(milliseconds: 1000),
                      dotSize: 5.0,
                      dotIncreasedColor: ColorsConsts.subTitle,
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
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                    top: 5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorsConsts.white),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Auction Ends in ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 20),
                              ),
                              Text('00:00:00',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Text('more'),
                                      Icon(Feather.more_horizontal),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            width: double.infinity,
                            height: 130,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext ctx, int index) {
                                return AuctionWidget(
                                  index: index,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                    top: 5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorsConsts.white),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Trending Deals ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 20),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Text('more'),
                                      Icon(Feather.more_horizontal),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            width: double.infinity,
                            height: 130,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext ctx, int index) {
                                return TrendingDeals(
                                  index: index,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorsConsts.white),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hot Category ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 20),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Text('more'),
                                      Icon(Feather.more_horizontal),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 130,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext ctx, int index) {
                                return HotCategoryWidget(
                                  index: index,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                /* Text(
                  'You may also Like',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
                Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 240 / 290,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: List.generate(100, (index) {
                      return FeedsProduct();
                    }),
                  ),
                ) */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
