import 'package:flutter/material.dart';
import 'package:mali_safi/widgets/wishlist_empty.dart';
import 'package:mali_safi/widgets/wishlist_full.dart';

class FavouriteScreen extends StatelessWidget {
  static const routeName = '/FavouriteScreen';
  const FavouriteScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List wishList = [];
    return wishList.isNotEmpty
        ? Scaffold(
            body: WishListEmpty(),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text('WishList (0)'),
            ),
            body: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext ctx, int index) {
                  return WishlistFull();
                }),
          );
  }
}
