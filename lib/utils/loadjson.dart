import 'dart:convert';

import 'package:flutter/services.dart';

Future<List> loadCategory() async {
  var dataCategory = await rootBundle.loadString('assets/data/category.json');
  return jsonDecode(dataCategory);
}


Future<List> loadProduct() async {
  var dataCategory = await rootBundle.loadString('assets/data/product.json');
  return jsonDecode(dataCategory);
}
