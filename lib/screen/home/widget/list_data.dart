import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return itemWidget();
        });
  }
}

Widget  itemWidget() {
  return Container(
    width: 100,
    height: 150,
    margin: EdgeInsets.all(10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 60, width: 60, child: FlutterLogo()),
        SizedBox(
          height: 10,
        ),
        Text("Flutter Logo"),
        SizedBox(
          height: 5,
        ),
        Text(
          "US 30",
          style: TextStyle(
              fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
