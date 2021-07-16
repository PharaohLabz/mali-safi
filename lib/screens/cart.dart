import 'package:flutter/material.dart';

import 'package:mali_safi/consts/my_icons.dart';
import 'package:mali_safi/widgets/cart_empty.dart';
import 'package:mali_safi/widgets/cart_full.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String dropdownvalue = 'Standard (3-7 business days)';

  var items = [
    'Standard (3-7 business days)',
    'G4s sevices',
    'Pickup at the Local Distribution Office'
  ];
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
              height: MediaQuery.of(context).size.height * 0.46,
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
      height: MediaQuery.of(context).size.height * 0.38,
      //height: 250,
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
            SizedBox(
              height: 10,
            ),
            Text(
              'Shipping method',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Center(
                    child: Column(children: [
                  DropdownButton(
                      isExpanded: true,
                      value: dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue = newValue;
                        });
                      }),
                ]))),
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 5),
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
