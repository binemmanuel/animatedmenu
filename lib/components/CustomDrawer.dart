import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomDrawer extends StatelessWidget {
  final List menuItems = [
    {
      'name': 'Home',
      'link': '',
      'icon': Icons.home,
    },
    {
      'name': 'Support',
      'link': '',
      'icon': Icons.headset_mic,
    },
    {
      'name': 'About',
      'link': '',
      'icon': Icons.help,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      padding: EdgeInsets.all(20.0),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // User info
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white24,
                    spreadRadius: 4,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // User Icon
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(width: 10.0),

                      // User's Details
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bin Emmanuel',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontSize: 14.0),
                          ),
                          Text(
                            'binemmanuel@mail.com',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Log out Button
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    final snackBar = SnackBar(
                      action: SnackBarAction(
                        label: 'Close',
                        onPressed: () {},
                        textColor: Colors.red,
                      ),
                      content: Text(
                        'You clicked on the ${menuItems[index]['name']} menu item',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: ListTile(
                    leading: Icon(
                      menuItems[index]['icon'],
                      color: Colors.white,
                    ),
                    title: Text(
                      menuItems[index]['name'],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),

            // Footer
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Powered by ZerabTech',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
