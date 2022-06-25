import 'package:ecommerce/screen/cart/controller/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../utils/constant/size.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Cart>(
      init: Cart(),
      builder: (controller) {

        print("=======    ${controller.cartList.length}");

        return SafeArea(
          child: Scaffold(
            body: Container(
              alignment: Alignment.center,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      child: Row(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.asset(controller.cartList[index].image!)),
                          W(20),
                          Text("${controller.cartList[index].name!}"),
                          Icon(Icons.add_circle_outline),
                          W(10),
                          Icon(Icons.minimize),
                          W(10),
                          Icon(Icons.delete),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: controller.cartList.length,
              ),
            ),
          ),
        );
      },
    );
  }
}
