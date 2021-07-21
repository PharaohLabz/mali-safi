import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:mali_safi/consts/colors.dart';
import 'package:mali_safi/consts/my_icons.dart';
import 'package:mali_safi/consts/padding.dart';
import 'package:mali_safi/screens/cart.dart';
import 'package:mali_safi/screens/search.dart';
import 'package:mali_safi/widgets/auction.dart';
import 'package:mali_safi/widgets/new_arrivals.dart';
import 'package:mali_safi/widgets/recommendation.dart';
import 'package:mali_safi/widgets/scrollable_appbar.dart';
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
      appBar: topAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleWithMoreBtn(
              title: 'Trending Auctions',
              press: () {},
            ),
            topCardBars(),
            auctionWidget(),
            TitleWithMoreBtn(
              title: 'Recommendation',
              press: () {},
            ),
            recommendation(),
            TitleWithMoreBtn(
              title: 'New Arrivals',
              press: () {},
            ),
            newArrivals(),
          ],
        ),
      ),
    );
  }

  Widget newArrivals() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.37,
      //margin: EdgeInsets.symmetric(horizontal: 3.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext ctx, int index) {
          return NewArrivals(
            index: index,
          );
        },
      ),
    );
  }

  Widget recommendation() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.37,
      //margin: EdgeInsets.symmetric(horizontal: 3.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext ctx, int index) {
          return Recommendation(
            index: index,
          );
        },
      ),
    );
  }

  Widget topCardBars() {
    return Container(
      width: double.infinity,
      height: 50,
      //margin: EdgeInsets.symmetric(horizontal: 3.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext ctx, int index) {
          return TopCardBars(
            index: index,
          );
        },
      ),
    );
  }

  Widget auctionWidget() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (BuildContext ctx, int index) {
          return AuctionWidget(
            index: index,
          );
        },
      ),
    );
  }

  AppBar topAppBar() {
    return AppBar(
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
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    this.press,
    this.title,
    Key key,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3, left: 8, right: 8),
      child: Row(
        children: [
          TitleWithCustomeUnderline(
            text: title,
          ),
          Spacer(),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: ColorsConsts.primaryColor,
            onPressed: press,
            child: Text(
              'View all',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomeUnderline extends StatelessWidget {
  const TitleWithCustomeUnderline({
    this.text,
    Key key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: defaultPadding / 4),
              height: 7,
              color: ColorsConsts.primaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
