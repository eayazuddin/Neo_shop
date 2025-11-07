import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_shop/presentation/ui/screens/base/controller/main_bottom_nav_controller.dart';
import '../widgets/category_card.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // prevent automatic pop
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          Get.find<MainBottomNavController>().backToHome();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade200,
          title: const Text("Categories"),
          leading: IconButton(
            onPressed: () {
              Get.find<MainBottomNavController>().backToHome();
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              return const FittedBox(child: CategoryCard());
            },
          ),
        ),
      ),
    );
  }
}
