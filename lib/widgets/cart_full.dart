import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mali_safi/consts/colors.dart';

class CartFull extends StatefulWidget {
  const CartFull({Key key}) : super(key: key);

  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: 100.0,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          /* borderRadius: BorderRadius.only(
            bottomRight: const Radius.circular(16.0),
            bottomLeft: const Radius.circular(16.0),
          ), */
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.5),
          ),
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            Container(
              //margin: EdgeInsets.all(8),
              width: 100,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/CatShoes.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flexible(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Long sleeve Top',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 22),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Ksh 450',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Subtitle goes here',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Text(
                              'x1',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
