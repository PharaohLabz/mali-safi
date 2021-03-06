import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mali_safi/consts/colors.dart';
import 'package:mali_safi/consts/my_icons.dart';
import 'package:mali_safi/provider/dark_theme_provider.dart';
import 'package:mali_safi/screens/cart.dart';
import 'package:mali_safi/screens/favourite.dart';
import 'package:mali_safi/widgets/explore.dart';
import 'package:mali_safi/widgets/feeds_products.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  static const routeName = '/ProductDetails';
  const ProductDetails({Key key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  GlobalKey previewController = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    //final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image(
              image: AssetImage('assets/images/CatShoes.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.purple.shade200,
                          onTap: () {},
                          borderRadius: BorderRadius.circular(30.0),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.save,
                              size: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.purple.shade200,
                          onTap: () {},
                          borderRadius: BorderRadius.circular(30.0),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.share,
                              size: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: ColorsConsts.primaryColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'title',
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Ksh 1600',
                              style: TextStyle(
                                color: ColorsConsts.subTitle,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 21,
                            color: ColorsConsts.subTitle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      _details('Brand', ' BrandName'),
                      _details('Quantity', ' 12 left'),
                      _details('Category', ' Cat Name'),
                      _details('Popularity', ' Popular'),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                        height: 1,
                      ),
                      Container(
                        color: ColorsConsts.backgroundColor,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'No reviews yet',
                                style: TextStyle(
                                  color: ColorsConsts.title,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                'Be the first review!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: ColorsConsts.subTitle,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                              height: 1,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8.0),
                  color: ColorsConsts.backgroundColor,
                  child: Text(
                    'Suggested products:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: double.infinity,
                  height: 300,
                  child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext ctx, int index) {
                        return Explore();
                      }),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'Details',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.normal),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    MyAppIcons.favorite,
                    color: ColorsConsts.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(FavouriteScreen.routeName);
                  },
                ),
                IconButton(
                  icon: Icon(
                    MyAppIcons.cart,
                    color: ColorsConsts.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartScreen.routeName);
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50,
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(side: BorderSide.none),
                      color: Colors.redAccent.shade400,
                      onPressed: () {},
                      child: Text(
                        'Add to Cart'.toUpperCase(),
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {},
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(side: BorderSide.none),
                      color: Theme.of(context).backgroundColor,
                      child: Row(
                        children: [
                          Text(
                            'Buy Now'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorsConsts.title,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.payment,
                            color: ColorsConsts.black,
                            size: 19,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: ColorsConsts.subTitle,
                      height: 50,
                      child: InkWell(
                        splashColor: ColorsConsts.black,
                        onTap: () {},
                        child: Center(
                          child: Icon(
                            MyAppIcons.favorite,
                            color: ColorsConsts.white,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _details(String title, String info) {
    return Padding(
      padding: EdgeInsets.only(
        top: 15,
        left: 16,
        right: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: ColorsConsts.title,
              fontWeight: FontWeight.w400,
              fontSize: 21.0,
            ),
          ),
          Text(
            info,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 21.0,
              color: ColorsConsts.subTitle,
            ),
          ),
        ],
      ),
    );
  }
}
