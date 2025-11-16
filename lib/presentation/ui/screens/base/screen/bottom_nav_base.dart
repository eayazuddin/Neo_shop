import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_shop/presentation/ui/screens/base/controller/main_bottom_nav_controller.dart';
import 'package:neo_shop/presentation/ui/screens/wish_list_screen.dart';
import 'package:neo_shop/utils/app_colors.dart';
import '../../cart_screen.dart';
import '../../category_list_screen.dart';
import '../../home/screen/home.dart';

class BottomNavBase extends StatefulWidget {
  const BottomNavBase({super.key});

  @override
  State<BottomNavBase> createState() => _BottomNavBaseState();
}

class _BottomNavBaseState extends State<BottomNavBase> {
  List<Widget> pages = [
    HomeScreen(),
    CategoryListScreen(),
    CartScreen(),
    WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (controller) {
        return Scaffold(
          body: pages[controller.currentSelectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentSelectedIndex,
            selectedItemColor: AppColors.greenColor,
            unselectedItemColor: AppColors.blackLightColor,
            elevation: 4,
            showUnselectedLabels: true,
            onTap: controller.changeScreen,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "WishList",
              ),
            ],
          ),
        );
      },
    );
  }
}
