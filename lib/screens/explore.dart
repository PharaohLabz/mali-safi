import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mali_safi/widgets/explore.dart';

class Feeds extends StatelessWidget {
  static const routeName = '/Feeds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          /* ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 100,
        itemBuilder: (BuildContext ctx, int index) {
          return Explore(
            index: index,
          );
        },
      ), */
          //         GridView.count(
          //   crossAxisCount: 2,
          //   childAspectRatio: 240 / 420,
          //   crossAxisSpacing: 8,
          //   mainAxisSpacing: 8,
          //   children: List.generate(100, (index) {
          //     return Explore();
          //   }),
          // )

          StaggeredGridView.countBuilder(
        //padding: ,
        crossAxisCount: 6,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) => Explore(),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 3 : 4),
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 6.0,
      ),
    );
  }
}
