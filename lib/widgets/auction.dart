import 'package:flutter/material.dart';

class AuctionWidget extends StatelessWidget {
  AuctionWidget({this.index});
  final int index;

  List<Map<String, Object>> categories = [
    {
      'price': 'Ksh 500',
      'categoryImagePath': 'assets/images/CatPhones.png',
    },
    {
      'price': 'Ksh 500',
      'categoryImagePath': 'assets/images/CatClothes.jpg',
    },
    {
      'price': 'Ksh 500',
      'categoryImagePath': 'assets/images/CatShoes.jpg',
    },
    {
      'price': 'Ksh 500',
      'categoryImagePath': 'assets/images/CatBeauty.jpg',
    },
    {
      'price': 'Ksh 500',
      'categoryImagePath': 'assets/images/CatLaptops.png',
    },
    {
      'price': 'Ksh 500',
      'categoryImagePath': 'assets/images/CatFurniture.jpg',
    },
    // {
    //   'categoryName': 'Watches',
    //   'categoryImage': 'assets/images/CatWatches.jpg',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            // Navigator.of(context).pushNamed(CategoriesFeedsScreen.routeName, arguments: '${categories[widget.index]['categoryName']}');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  categories[index]['categoryImagePath'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 100,
            height: 100,
          ),
        ),
        Positioned(
          left: 10,
          bottom: 0.0,
          right: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //color: Theme.of(context).backgroundColor,
            child: Text(
              categories[index]['price'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                //color: Colors.blueGrey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
