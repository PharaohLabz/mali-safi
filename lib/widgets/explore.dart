import 'package:flutter/material.dart';

import 'package:mali_safi/consts/colors.dart';

class Explore extends StatefulWidget {
  const Explore({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // width: 250,
        // height: 290,
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsConsts.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: 100,
                      maxHeight: MediaQuery.of(context).size.height * 0.25,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/CatFurniture.jpg'),
                            fit: BoxFit.fill),
                      ),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 5,
                ),
                margin: EdgeInsets.only(left: 5, bottom: 2, right: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Description',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 15,
                          color: ColorsConsts.title,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'ksh 5000',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 18,
                          color: ColorsConsts.title,
                          fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Quantity: 2'.toString().toUpperCase(),
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorsConsts.subTitle,
                              fontWeight: FontWeight.w600),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(18),
                              splashColor: Theme.of(context).splashColor,
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.grey,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
