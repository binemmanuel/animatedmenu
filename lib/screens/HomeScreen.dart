import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMenuOpen = false;
  double xoffset = 0;
  double yoffset = 0;
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scale),
      decoration: BoxDecoration(
        color: isMenuOpen ? Colors.white70 : Colors.white,
        borderRadius:
            isMenuOpen ? BorderRadius.circular(20.0) : BorderRadius.circular(0),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Row(
                children: [
                  isMenuOpen
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              isMenuOpen = isMenuOpen ? false : true;

                              xoffset = 0;
                              yoffset = 0;

                              scale = 1;
                            });
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.blue,
                            size: 40.0,
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            setState(() {
                              isMenuOpen = isMenuOpen ? false : true;

                              xoffset = 200.0;
                              yoffset = 160.0;

                              scale = 0.7;
                            });
                          },
                          child: Icon(
                            Icons.menu,
                            color: Colors.blue,
                            size: 40.0,
                          ),
                        ),

                  SizedBox(width: 20.0),

                  // Page title
                  Text(
                    'Home Page',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.blue, fontSize: 15.0),
                  ),
                ],
              ),
            ),

            // Page Content
            Center(
              child: Text(
                'Awesome App Drawer',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
