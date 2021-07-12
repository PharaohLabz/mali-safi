import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:shopify/consts/colors.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController;
    var top = 0.0;
    return Scaffold(
        body: CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          elevation: 4,
          expandedHeight: 200,
          pinned: true,
          flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            top = constraints.biggest.height;
            return Container(
              decoration: BoxDecoration(
                color: ColorsConsts.white,
              ),
              child: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                centerTitle: true,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedOpacity(
                      opacity: top <= 110.0 ? 1.0 : 0,
                      duration: Duration(milliseconds: 300),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            height: kToolbarHeight / 1.8,
                            width: kToolbarHeight / 1.8,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white, blurRadius: 1.0)
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/CatLaptops.png'))),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'John mbugua',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                background: Image(
                  image: AssetImage('assets/images/CatLaptops.png'),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: userTile(
                    'Email Address', 'Johnniembugua321@gmail.com', context),
              ),
              userTile('My Address', '123 Royal Street, Sydney', context),
              userTile('My orders', '2 Orders', context),
              userTile('My returns', '1 return', context),
              userTile('Payment', '', context),
              userTile('Passwords', '', context),
              userTile('Language', 'English', context),
              userTile('Currency', 'Ksh', context),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  splashColor: Theme.of(context).splashColor,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(MaterialCommunityIcons.logout),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }

  Widget userTile(String title, String subTitle, BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Theme.of(context).splashColor,
            child: ListTile(
              onTap: () {},
              leading: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              trailing: Text(subTitle),
            ),
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.2),
          height: 1,
        )
      ],
    );
  }
}
