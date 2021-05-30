import 'package:flutter/material.dart';
import 'info.dart';

class Body extends StatelessWidget {
  // const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Info(
        image: "assets/images/pic.png",
        name: "นายตลาดเซฟวัน จำกัดจริง",
        email: "saveone@gmail.com",
      ),
    );
  }
}
