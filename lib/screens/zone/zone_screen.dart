import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saveone_app/components/my_bottom_nav_bar.dart';
import 'package:saveone_app/constants.dart';
import 'package:saveone_app/screens/zone/components/body.dart';

class ZoneScreen extends StatelessWidget {
  // const ZoneScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      // body: Body(),
      // bottomNavigationBar: Container(
      //   color: Colors.black,
      //   height: 80,
      // ),

      body: Container(
        height: size.height * .4,
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: size.height * 0.2 - 27,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: const Text("เลือกโซน"),
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: kTextLigntColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/user-icon.svg",
            color: kTextLigntColor,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
