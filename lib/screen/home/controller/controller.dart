import 'package:ecommerce/screen/home/model/ProductModel.dart';
import 'package:ecommerce/utils/loadjson.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  RxInt categorySelcted = 0.obs;
  RxList categoryList = [].obs;
  RxList<ProductModel> productList = RxList<ProductModel>([]);
  RxString categoryKey = 'fruits'.obs;

  HomeController() {
    loadCategoryData();
    loadProductData();
  }

  void loadCategoryData() async {
    categoryList.value = await loadCategory();
  }

  void loadProductData() async {
    List dataList = await loadProduct();

    productList.value = dataList
        .where((element) => categoryKey == element['category'])
        .map<ProductModel>((e) => ProductModel(e['name'], e['category'],
            e['image'], e['description'], e['id'], e['price']))
        .toList();

    print("====== ${productList.value}");
  }
}
