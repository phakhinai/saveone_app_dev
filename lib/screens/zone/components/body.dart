import 'package:flutter/material.dart';
import 'package:saveone_app/constants.dart';
import 'package:saveone_app/screens/zone/components/grid_zone.dart';

import 'info.dart';

class Body extends StatelessWidget {
  // const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/pic.png",
            name: "นายตลาดเซฟวัน จำกัดจริง",
            email: "saveone@gmail.com",
          ),
          SizedBox(
            height: 500,
            child: GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: kBorderColor,
                    width: 1,
                  )),
                ),
              ],
            ),
          ),
          // GridZone(),
        ],
      ),
    );
  }
}
