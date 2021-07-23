import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mali_safi/consts/colors.dart';

class AuctionWidget extends StatefulWidget {
  AuctionWidget({this.index});
  final int index;

  @override
  _AuctionWidgetState createState() => _AuctionWidgetState();
}

class _AuctionWidgetState extends State<AuctionWidget> {
  List<Map<String, Object>> auction = [
    {
      'price': 'Ksh 500',
      'imagePath': 'assets/images/CatPhones.png',
    },
    {
      'price': 'Ksh 500',
      'imagePath': 'assets/images/CatClothes.jpg',
    },
    {
      'price': 'Ksh 500',
      'imagePath': 'assets/images/CatShoes.jpg',
    },
    {
      'price': 'Ksh 500',
      'imagePath': 'assets/images/CatBeauty.jpg',
    },
    {
      'price': 'Ksh 500',
      'imagePath': 'assets/images/CatLaptops.png',
    },
    {
      'price': 'Ksh 500',
      'imagePath': 'assets/images/CatFurniture.jpg',
    },
    // {
    //   'iame': 'Watches',
    //   'image': 'assets/images/CatWatches.jpg',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 3, bottom: 8.0, left: 8.0, right: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          color: ColorsConsts.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.335,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trouser',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Price: ksh 450',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: ColorsConsts.subTitle),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Auction Ending in',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: ColorsConsts.subTitle),
                          ),
                          Material(
                            elevation: 10,
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              splashColor: ColorsConsts.white,
                              borderRadius: BorderRadius.circular(30.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: ColorsConsts.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '05:00:00',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: ColorsConsts.subTitle,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                // auction[index]['imagePath'],
                                'assets/images/CatShoes.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 12,
                        top: 10,
                        child: Icon(
                          Entypo.star,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 7,
                        child: Icon(
                          Entypo.star_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                          right: 12,
                          bottom: 32,
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorsConsts.backgroundColor,
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Top Bid\n ksh 300',
                              style: TextStyle(color: ColorsConsts.subTitle),
                            ),
                          ))
                    ],
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
