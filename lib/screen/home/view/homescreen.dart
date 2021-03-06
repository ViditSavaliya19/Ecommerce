import 'package:ecommerce/componet/appbar.dart';
import 'package:ecommerce/screen/home/controller/controller.dart';
import 'package:ecommerce/screen/home/widget/list_category.dart';
import 'package:ecommerce/screen/home/widget/list_data.dart';
import 'package:ecommerce/utils/constant/const_color.dart';
import 'package:ecommerce/utils/loadjson.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categoryList = [];
  List dataList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: backgroundColor,
            appBar: CustomAppBar(title: "Shop Now", height: 60.0),
            body: Padding(
              padding: EdgeInsets.all(8.0),
              // child: CustomScrollView(
              //   slivers: [
              //     SliverAppBar(
              //       title: Text("Hello"),
              //       backgroundColor: backgroundColor,
              //       elevation: 0,
              //       floating: true,
              //       snap: true,
              //     ),
              //     SliverToBoxAdapter(
              //       child: ListCategory(controller),
              //     ),
              //     SliverGrid(
              //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2,
              //       ),
              //       delegate: SliverChildBuilderDelegate(
              //         (context, index) {
              //           return itemWidget(
              //               dataList[index], controller.categorySelcted.value);
              //         },
              //         childCount: dataList.length,
              //       ),
              //     )
              //   ],
              // ),
              child: Column(
                children: [
                  ListCategory(controller),
                  Obx(
                    () => Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2
                        ),
                        itemBuilder: (context, index) {
                          return itemWidget(controller, index);
                        },
                        itemCount: controller.productList.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
