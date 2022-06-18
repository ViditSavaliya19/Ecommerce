import 'package:ecommerce/screen/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ListCategory extends StatelessWidget {
  ListCategory(this.controller, {Key? key}) : super(key: key);

  HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => GestureDetector(
              onTap: () {
                controller.categorySelcted.value = 0;
              },
              child: categoryItem(
                  "Fruits",
                  controller.categorySelcted.value == 0
                      ? Colors.amber
                      : Colors.transparent,
                  controller.categorySelcted.value == 0 ? Colors.black:Colors.black38)),
        ),
        SizedBox(
          width: 20,
        ),
        Obx(
          () => GestureDetector(
              onTap: () {
                controller.categorySelcted.value = 1;
              },
              child: categoryItem(
                  "Vegetables",
                  controller.categorySelcted.value == 1
                      ? Colors.green
                      : Colors.transparent,
                  controller.categorySelcted.value == 1 ?Colors.black:Colors.black38)),
        ),
      ],
    );
  }

  Widget categoryItem(String item, Color itemTint,  Color textTint) {
    return Container(
      child: Column(
        children: [
          Text(
            "$item",
            style: TextStyle( color: textTint,fontWeight: FontWeight.bold,fontSize: 20),
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
