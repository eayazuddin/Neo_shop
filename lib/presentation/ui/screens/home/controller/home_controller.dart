import 'dart:convert';
import 'package:get/get.dart';

import '../../../../../service/api_check.dart';
import '../../../../../service/api_service.dart';
import '../../../../../service/api_url.dart';
import '../../../../../utils/app_const.dart';
import '../model/categoryList.dart';


class HomeController extends GetxController {
  // ===============================  Category get all ===========================

  Rx<Status> categoryStatus = Status.loading.obs;
  RxList<CategoryModel?> getAllCategoryModelList = <CategoryModel>[].obs;

  @override
  void onInit() {
    getAllCategory();
    super.onInit();
  }

  Future<void> getAllCategory() async {
    categoryStatus.value = Status.loading;

    var response = await ApiClient.getData(ApiUrl.categoryList);

    if (response.statusCode == 200 || response.statusCode == 201) {
      getAllCategoryModelList.value = List<CategoryModel>.from(response.body['data'].map((x) => CategoryModel.fromJson(x)),
      );

      categoryStatus.value = Status.completed;
    } else {
      categoryStatus.value = Status.error;
      ApiChecker.checkApi(response);
    }
  }
}
