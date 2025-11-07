import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_shop/application/bindings/bindings.dart';
import '../presentation/ui/screens/splash_screen.dart';
class NeoShop extends StatelessWidget {
  const NeoShop({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: StateBindings(),
      home: SplashScreen(),
    );
  }
}
