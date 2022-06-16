import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
        ),
        height: 45,width: 45,
        alignment: Alignment.center,
        child: Icon(Icons.card_travel,color: Colors.green,),
      ),
    );
  }
}
