import 'package:get/get.dart';
import 'package:neo_shop/presentation/ui/screens/auth/email_verification/controller/email_verification.dart';
import 'package:neo_shop/presentation/ui/screens/base/controller/main_bottom_nav_controller.dart';

class StateBindings extends Bindings{
  @override
  void dependencies(){
    Get.put(MainBottomNavController());
    Get.put(EmailVerificationController());
  }
}