import 'package:ecommerce/screen/home/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ListCategory extends StatelessWidget {
  ListCategory(this.controller, {Key? key}) : super(key: key);

  HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        itemCount:controller.categoryList.length,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Obx(
                () =>
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                      onTap: () {
                        controller.categorySelcted.value = index;
                        controller.categoryKey.value = controller.categoryList[index]['key'];
                        print("======== ${controller.categoryList[index]['key']}");
                        controller.loadProductData();
                      },
                      child: categoryItem(
                          "${controller.categoryList[index]['name']}",
                          controller.categorySelcted.value == index
                              ? Colors.amber
                              : Colors.transparent,
                          controller.categorySelcted.value == index
                              ? Colors.black
                              : Colors.black38)),
                ),
          );
        },
      ),
    );
  }

  Widget categoryItem(String item, Color itemTint, Color textTint) {
    return Container(
      child: Column(
        children: [
          Text(
            "$item",
            style: TextStyle(
                color: textTint, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            width: 30,
            color: itemTint,
          ),
        ],
      ),
    );
  }
}
