import 'package:ecommerce/componet/cartIcon.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar(
      {Key? key,
      required this.title,
      this.height = 200,
      this.leadings = const [],
      this.actions = const []})
      : super(key: key);
  final String title;
  final double height;
  final List<Widget> leadings;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      width: preferredSize.width,
      color: Colors.transparent,
      alignment: Alignment.center,
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              "${title}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(onTap: () {
                    Get.toNamed('/cart');
                  }, child: CartIcon())),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget get child => Container();

  @override
  Size get preferredSize => Size.fromHeight(height);
}
