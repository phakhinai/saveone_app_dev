import 'package:flutter/material.dart';
import 'package:saveone_app/constants.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.name,
    required this.email,
    required this.image,
  }) : super(key: key);

  final String name, email, image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.35,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: size.height * 0.2 - 27,
              color: kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  height: size.height * 0.2,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 22,
                    color: kTextColor,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontWeight: FontWeight.w400,
                    color: kTextColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "เสาร์, 6 เม.ย. 62",
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 20,
                    color: kTextColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
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
