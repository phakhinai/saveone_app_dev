import 'package:flutter/material.dart';
import 'package:saveone_app/constants.dart';

class GridZone extends StatelessWidget {
  const GridZone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              )
            ),
          ),Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kBorderColor,
                width: 1,
              )
            ),
          ),Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kBorderColor,
                width: 1,
              )
            ),
          ),Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kBorderColor,
                width: 1,
              )
            ),
          ),Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kBorderColor,
                width: 1,
              )
            ),
          ),Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kBorderColor,
                width: 1,
              )
            ),
          ),
        ],
      ),
    );
  }
}