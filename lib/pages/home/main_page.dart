import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_project/pages/home/main_page_body.dart';
import 'package:my_project/utils/colors.dart';
import 'package:my_project/utils/dimensions.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print("cuur height is " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          /// top part
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Siyah Kadife",
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(Icons.search,
                          color: Colors.white, size: Dimensions.iconSize24),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //show the body
          MainPageBody(),

          /// scrolling cards

          Expanded(
            child: SingleChildScrollView(),
          ),
        ],
      ),
    );
  }
}
