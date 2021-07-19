import 'package:flutter/material.dart';

class TrendingDeals extends StatelessWidget {
  TrendingDeals({this.index});
  final int index;

  List<Map<String, Object>> categories = [
    {
      'categoryName': 'Phones',
      'categoryImagePath': 'assets/images/CatPhones.png',
    },
    {
      'categoryName': 'Clothes',
      'categoryImagePath': 'assets/images/CatClothes.jpg',
    },
    {
      'categoryName': 'Shoes',
      'categoryImagePath': 'assets/images/CatShoes.jpg',
    },
    {
      'categoryName': 'Beauty&Health',
      'categoryImagePath': 'assets/images/CatBeauty.jpg',
    },
    {
      'categoryName': 'Laptops',
      'categoryImagePath': 'assets/images/CatLaptops.png',
    },
    {
      'categoryName': 'Furniture',
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
            //height: 100,
            width: 150,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //color: Theme.of(context).backgroundColor,
            child: Text(
              categories[index]['categoryName'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                //color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 0.0,
          right: 10,
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
      ],
    );
  }
}
