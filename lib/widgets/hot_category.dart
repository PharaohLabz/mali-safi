import 'package:flutter/material.dart';

class HotCategoryWidget extends StatefulWidget {
  HotCategoryWidget({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _HotCategoryWidgetState createState() => _HotCategoryWidgetState();
}

class _HotCategoryWidgetState extends State<HotCategoryWidget> {
  List<Map<String, Object>> categories = [
    {
      'categoryName': 'Phones',
      'categoryImagesPath': 'assets/images/CatPhones.png',
    },
    {
      'categoryName': 'clothes',
      'categoryImagesPath': 'assets/images/CatClothes.jpg',
    },
    {
      'categoryName': 'Shoes',
      'categoryImagesPath': 'assets/images/CatShoes.jpg',
    },
    {
      'categoryName': 'Beauty & Living',
      'categoryImagesPath': 'assets/images/CatBeauty.jpg',
    },
    {
      'categoryName': 'Laptops',
      'categoryImagesPath': 'assets/images/CatPhones.png',
    },
    {
      'categoryName': 'Furniture',
      'categoryImagesPath': 'assets/images/CatFurniture.jpg',
    },
    {
      'categoryName': 'Watches',
      'categoryImagesPath': 'assets/images/CatWatches.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(categories[widget.index]['cateryImagePath']),
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 100,
          height: 100,
        ),
        Positioned(
          bottom: 0,
          left: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            color: Theme.of(context).backgroundColor,
            child: Text(
              categories[widget.index]['categoryName'],
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
            ),
          ),
        ),
      ],
    );
  }
}
