import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/clothes/category_product.dart';
import 'package:my_project/pages/home/main_page_body.dart';
import 'package:my_project/pages/home/main_page.dart';
import 'package:my_project/pages/clothes/product_details.dart';
import 'package:my_project/utils/colors.dart';
import 'package:my_project/utils/dimensions.dart';
import 'package:my_project/widgets/big_text.dart';
import 'package:dots_indicator/dots_indicator.dart';

class MyCat extends StatelessWidget {
  const MyCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCatPage(),
    );
  }
}

class MyCatPage extends StatefulWidget {
  @override
  _MyCatPageState createState() => _MyCatPageState();
}

class _MyCatPageState extends State<MyCatPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.mainBlackColor),
          onPressed: () {},
        ),
        title: Text(
          "Siyah Kadife",
          style: TextStyle(
              color: AppColors.mainColor,
              fontSize: Dimensions.font26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
          padding: EdgeInsets.only(left: Dimensions.width20),
          children: <Widget>[
            SizedBox(height: Dimensions.height15),
            Text('Categories',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: AppColors.mainBlackColor,
                    fontSize: Dimensions.font26,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: Dimensions.height15),
            Center(
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                labelColor: AppColors.mainColor,
                isScrollable: true,
                labelPadding: EdgeInsets.only(right: Dimensions.width45),
                unselectedLabelColor: Color(0xFFCDCDCD),
                tabs: [
                  Tab(
                    child: Text('طقم',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: Dimensions.font20,
                        )),
                  ),
                  Tab(
                    child: Text(' فستان',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: Dimensions.font20,
                        )),
                  ),
                  Tab(
                    child: Text('جوكيت ',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: Dimensions.font20,
                        )),
                  ),
                  Tab(
                    child: Text(' عباة',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: Dimensions.font20,
                        )),
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: TabBarView(controller: _tabController, children: [
                  CategoryProduct(),
                  CategoryProduct(),
                  CategoryProduct(),
                  CategoryProduct(),
                ]))
          ]),
    );
  }
}
