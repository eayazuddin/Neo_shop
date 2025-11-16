import 'package:get/get.dart';
import 'package:neo_shop/presentation/ui/screens/auth/complete_profile/screen/complete_profile.dart';
import '../helper/shared_pref/shared_preference.dart';
import '../utils/app_const.dart';
import '../utils/toast_message.dart';

class ApiChecker {
  static void checkApi(Response response, {bool getXSnackBar = false}) async {
    if (response.statusCode == 401) {
      await SharePrefsHelper.remove(AppConstants.bearerToken);

      Get.offAll(CompleteProfile());
      // Get.offAllNamed(AppRoutes.loginPage);
    } else {
      showCustomSnackBar(response.body['message']!, getXSnackBar: getXSnackBar);
    }
  }
}


