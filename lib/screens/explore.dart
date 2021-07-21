import 'package:flutter/material.dart';
import 'package:mali_safi/widgets/explore.dart';

import 'package:mali_safi/widgets/feeds_products.dart';

class Feeds extends StatelessWidget {
  static const routeName = '/Feeds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 100,
        itemBuilder: (BuildContext ctx, int index) {
          return Explore(
            index: index,
          );
        },
      ),
      /* GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 210 / 290,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: List.generate(100, (index) {
        return Explore();
      }),
    ) */

//         StaggeredGridView.countBuilder(
//           padding: ,
//   crossAxisCount: 6,
//   itemCount: 8,
//   itemBuilder: (BuildContext context, int index) =>FeedProducts(),
//   staggeredTileBuilder: (int index) =>
//       new StaggeredTile.count(3, index.isEven ? 4 : 5),
//   mainAxisSpacing: 8.0,
//   crossAxisSpacing: 6.0,
// ),
    );
  }
}
