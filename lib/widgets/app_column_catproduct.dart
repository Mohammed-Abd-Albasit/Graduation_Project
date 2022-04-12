import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/utils/colors.dart';
import 'package:my_project/utils/dimensions.dart';
import 'package:my_project/widgets/big_text.dart';
import 'package:my_project/widgets/small_text.dart';

class AppColumncatproduct extends StatelessWidget {
  final String text;
  const AppColumncatproduct({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: 2,
          color: Colors.white,
        ),

        // ignore: prefer_const_constructors

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(text: "Size: (38,40,42,44,46,48,50)"),
            SizedBox(
              height: 5,
            ),
            SmallText(text: "Color: (وردي , اسود)"),
            SizedBox(
              height: 5,
            ),
            SmallText(text: "Type: (ربيعي) "),
          ],
        ),
      ],
    );
  }
}
