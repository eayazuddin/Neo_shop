import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_shop/presentation/ui/screens/base/controller/main_bottom_nav_controller.dart';
import 'package:neo_shop/presentation/ui/screens/product_list_screen.dart';
import '../../../widgets/category_card.dart';
import '../../../widgets/circular_icon_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/home/home_slider.dart';
import '../../../widgets/product_card.dart';
import '../../../widgets/section_header.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "NEO SHOP",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color(0xff115E59),
              ),
            ),
            Spacer(),
            CircularIconButton(onTap: () {}, icon: Icons.person),
            SizedBox(width: 8),
            CircularIconButton(onTap: () {}, icon: Icons.call),
            SizedBox(width: 8),
            CircularIconButton(onTap: () {}, icon: Icons.notifications),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextField(
                fillColor: Colors.grey.shade200,
                isPrefixIcon: true,
                hintText: "Search",
              ),
              SizedBox(height: 10),
              HomeSlider(),
              SectionHeader(
                title: 'Categories',
                onTap: () {
                  Get.find<MainBottomNavController>().changeScreen(1);
                },
              ),
              Obx(
                () => SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.getAllCategoryModelList.length,
                    itemBuilder: (context, index) {
                      final category =
                          controller.getAllCategoryModelList[index];
                      return CategoryCard(
                        image: NetworkImage(
                          category?.categoryImg ??
                              "https://gimgs2.nohat.cc/thumb/f/640/cleaner-with-cleaning-products-housekeeping-service-free-vector--bb3af4a57f2441d1b680.jpg",
                        ),
                        title: category?.categoryName ?? "",
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              SectionHeader(
                title: 'Popular',
                onTap: () {
                  Get.to(productListScreen());
                },
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productCard();
                  },
                ),
              ),
              SizedBox(height: 5),
              SectionHeader(
                title: 'Special',
                onTap: () {
                  Get.to(productListScreen());
                },
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productCard();
                  },
                ),
              ),
              SizedBox(height: 5),
              SectionHeader(
                title: 'New',
                onTap: () {
                  Get.to(productListScreen());
                },
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return productCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
