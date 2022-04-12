import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/utils/colors.dart';
import 'package:my_project/utils/dimensions.dart';
import 'package:my_project/widgets/big_text.dart';
import 'package:my_project/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "5"),
          ], // Row
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 5,
        ),
        Container(
            alignment: Alignment.bottomLeft,
            child: SmallText(text: "Size: (38,40,42,44,46,48,50)")),
      ],
    );
  }
}
