import 'package:ecommerce/utils/constant/const_color.dart';
import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
           BoxShadow(
            color: Colors.black26,
            blurRadius: 2.0,
          ),
        ],
      ),
      height: 45,
      width: 45,
      alignment: Alignment.center,
      child: const Icon(
        Icons.card_travel,
        color: Colors.green,
      ),
    );
  }
}
