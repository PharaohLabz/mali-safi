import 'package:flutter/material.dart';
import 'package:mali_safi/consts/colors.dart';
import 'package:mali_safi/consts/padding.dart';

class Body extends StatefulWidget {
  Body({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, Object>> carouselDeatails = [
    {
      'imagePath': 'assets/images/CatBeauty.jpg',
      'ProductName': 'Addidas shoe',
      'TimeOut': '00.00.00',
      'price': 'Ksh3400',
    },
    {
      'imagePath': 'assets/images/CatLaptops.png',
      'ProductName': 'Addidas shoe',
      'TimeOut': '00.00.00',
      'price': 'Ksh3400',
    },
    {
      'imagePath': 'assets/images/CatFurniture.jpg',
      'ProductName': 'Addidas shoe',
      'TimeOut': '00.00.00',
      'price': 'Ksh3400',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: ColorsConsts.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
        height: MediaQuery.of(context).size.height * 0.2 + 10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    'Addidas shoe',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.button,
                  ),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Text(
                    '5000',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: ColorsConsts.subTitle),
                  ),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Text(
                    '00.00.00',
                    style: TextStyle(color: ColorsConsts.subTitle),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/CatShoes.jpg'
                          // carouselDeatails[index]['imagePath']
                          ))),
            )
          ],
        ),
      ),
    );
  }
}
