import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

Widget itemWidget(HomeController controller, int i) {
  return Container(
    width: 300,
    height: 150,
    margin: EdgeInsets.all(10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 100,
                width: 100,
                child: Image.asset(controller.productList[i].image!)),
            SizedBox(
              height: 10,
            ),
            Text(controller.productList[i].name!),
            SizedBox(
              height: 5,
            ),
            Text(
              "${controller.productList[i].price!}",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topLeft: Radius.circular(20)),
            ),
            child: IconButton(
              onPressed: (){
                Get.toNamed('/product',arguments: controller.productList[i]);
              },
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
