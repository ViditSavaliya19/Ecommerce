import 'package:ecommerce/screen/home/view/homescreen.dart';
import 'package:get/route_manager.dart';

import '../screen/product/product.dart';

routes() => [
      GetPage(name: '/', page: () => HomeScreen()),
      GetPage(name: '/product', page: () => ProductScreen()),
    ];
