import 'package:flutter/material.dart';

class AuctionWidget extends StatelessWidget {
  AuctionWidget({Key key, this.index}) : super(key: key);
  final int index;

  List<Map<String, Object>> categories = [
    {
      'Price': 'Ksh 299',
      'ImagesPath': 'assets/images/CatPhones.png',
    },
    {
      'Price': 'Ksh 300',
      'ImagesPath': 'assets/images/CatClothes.jpg',
    },
    {
      'Price': 'Ksh 700',
      'ImagesPath': 'assets/images/CatShoes.jpg',
    },
    {
      'Price': 'Ksh 850',
      'ImagesPath': 'assets/images/CatBeauty.jpg',
    },
    {
      'Price': 'Ksh 4000',
      'ImagesPath': 'assets/images/CatPhones.png',
    },
    {
      'Price': '12000',
      'ImagesPath': 'assets/images/CatFurniture.jpg',
    },
    {
      'Price': 'Ksh 400',
      'ImagesPath': 'assets/images/CatWatches.jpg',
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
              image: AssetImage(categories[index]['ImagePath']),
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 100,
          height: 100,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            color: Theme.of(context).backgroundColor,
            child: Text(
              categories[index]['Price'],
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
            ),
          ),
        ),
      ],
    );
  }
}
