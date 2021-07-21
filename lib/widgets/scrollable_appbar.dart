import 'package:flutter/material.dart';
import 'package:mali_safi/consts/colors.dart';

class TopCardBars extends StatefulWidget {
  TopCardBars({this.index});
  final int index;

  @override
  _TopCardBarsState createState() => _TopCardBarsState();
}

class _TopCardBarsState extends State<TopCardBars> {
  int _selectedPageIndex = 0;

  List<Map<String, Object>> categories;

  @override
  void initState() {
    categories = [
      {
        'titleName': 'All',
        'categoryImagePath': 'assets/images/CatPhones.png',
      },
      {
        'titleName': 'Live Auction',
        'categoryImagePath': 'assets/images/CatClothes.jpg',
      },
      {
        'titleName': 'Today Auction',
        'categoryImagePath': 'assets/images/CatShoes.jpg',
      },
      {
        'titleName': 'Upcoming auction',
        'categoryImagePath': 'assets/images/CatBeauty.jpg',
      },
      {
        'titleName': 'Completed Auctions',
        'categoryImagePath': 'assets/images/CatLaptops.png',
      },
      {
        'titleName': 'Reviews',
        'categoryImagePath': 'assets/images/CatFurniture.jpg',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      if (_selectedPageIndex == index) {
        ColorsConsts.inactiveCardColor = ColorsConsts.activeCardColor;
      } else {
        ColorsConsts.activeCardColor = ColorsConsts.inactiveCardColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: InkWell(
        onTap: () {
          _selectPage(_selectedPageIndex);
          // Navigator.of(context).pushNamed(CategoriesFeedsScreen.routeName, arguments: '${categories[widget.index]['titleName']}');
        },
        child: Container(
          //height: 100,
          //width: 100,
          decoration: BoxDecoration(
              color: ColorsConsts.inactiveCardColor,
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //color: Theme.of(context).backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              categories[widget.index]['titleName'],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                //color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
