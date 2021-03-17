import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // it is very vital you put ur app in safe area to avoid yout app details scrolling into ur notification bar or ur navigation bar
      body: SafeArea(
        // page view tells the app to show a bunch of scrollable page, it can be scrolled vertically or horizontally but it is set by default to horizontal
        child: PageView(
          // the next line is commented but if you remove the comment, then the app will have a vertical scroll

          // scrollDirection: Axis.vertical,
          children: [
            //  we would later design the containers but for now lets get you up to speed
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
