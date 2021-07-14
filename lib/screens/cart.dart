import 'package:flutter/material.dart';
import 'package:mali_safi/consts/colors.dart';
import 'package:mali_safi/consts/my_icons.dart';
import 'package:mali_safi/widgets/cart_empty.dart';
import 'package:mali_safi/widgets/cart_full.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List products = [];
    return products.isNotEmpty
        ? Scaffold(body: CartEmpty())
        : Scaffold(
            bottomSheet: checkoutSection(context),
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Check Out',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MyAppIcons.trash,
                    color: Colors.redAccent,
                  ),
                )
              ],
            ),
            body: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              margin: EdgeInsets.only(bottom: 60),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CartFull();
                  }),
            ),
          );
  }

  Widget checkoutSection(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.315,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Subtotal ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  'Ksh 450',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Shipping ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  'Ksh 0.0',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Divider(thickness: 2, color: Colors.black),
            Row(
              /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Total Amount',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Text(
                  'Ksh 450.0',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 40, right: 40, bottom: 10),
              color: Colors.black.withOpacity(0.8),
              width: double.infinity,
              child: Material(
                elevation: 10,
                color: Colors.transparent,
                child: InkWell(
                  //borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  splashColor: Theme.of(context).splashColor,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Place Order',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
