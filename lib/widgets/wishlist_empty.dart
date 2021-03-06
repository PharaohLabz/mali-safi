import 'package:flutter/material.dart';

import 'package:mali_safi/consts/colors.dart';

class WishListEmpty extends StatelessWidget {
  const WishListEmpty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/empty-wishlist.png'),
            ),
          ),
        ),
        Text(
          'Your Wishlist Is Empty',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Explore more and shortlist some items',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorsConsts.subTitle,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * 0.06,
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.grey),
            ),
            color: ColorsConsts.subTitle,
            child: Text(
              'Add a wish'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorsConsts.white,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
