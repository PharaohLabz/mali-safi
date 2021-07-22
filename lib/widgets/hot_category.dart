import 'package:flutter/material.dart';

class HotCategoryWidget extends StatefulWidget {
  HotCategoryWidget({this.index});
  final int index;

  @override
  _HotCategoryWidgetState createState() => _HotCategoryWidgetState();
}

class _HotCategoryWidgetState extends State<HotCategoryWidget> {
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
      'categoryName': 'Beauty',
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  categories[widget.index]['categoryImagePath'],
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
              categories[widget.index]['categoryName'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                //color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
