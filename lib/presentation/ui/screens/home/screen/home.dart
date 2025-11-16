import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/app_const.dart';
import '../../../widgets/home/home_slider.dart';
import '../../../widgets/home/sliderItem.dart';
import '../controller/home_controller.dart';
import '../../../widgets/category_card.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/section_header.dart';
import '../../../widgets/circular_icon_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  late final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              "NEO SHOP",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color(0xff115E59),
              ),
            ),
            const Spacer(),
            CircularIconButton(onTap: () {}, icon: Icons.person),
            const SizedBox(width: 8),
            CircularIconButton(onTap: () {}, icon: Icons.call),
            const SizedBox(width: 8),
            CircularIconButton(onTap: () {}, icon: Icons.notifications),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomTextField(
                fillColor: Colors.grey.shade200,
                isPrefixIcon: true,
                hintText: "Search",
              ),
              const SizedBox(height: 10),

              // ================================= Slider ============================

              Obx(() {
                if (controller.sliderModelList.isEmpty) {
                  return const SizedBox(
                    height: 200,
                    child: Center(child: CircularProgressIndicator()),
                  );
                } else {
                  // Convert your sliderModelList into the required format
                  List<Map<String, String>> sliderItems = controller.sliderModelList.map((item) {
                    return {
                      'title': item?.title ?? '',
                      'image': item?.image ?? '',
                      'price': item?.price ?? '',
                      'shortDes': item?.shortDes ?? '',
                    };
                  }).toList();
                  return HomeSlider(items: sliderItems);
                }
              }),

              SizedBox(height: 16),

              // ================================ Categories ======================================
              SectionHeader(
                title: 'Categories',
                onTap: () {
                  // Navigate to categories
                },
              ),
              const SizedBox(height: 8),
              Obx(() {
                if (controller.categoryStatus.value == Status.loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (controller.categoryStatus.value == Status.error) {
                  return const Center(child: Text("Failed to load categories"));
                } else {
                  return SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.getAllCategoryModelList.length,
                      itemBuilder: (context, index) {
                        final category =
                        controller.getAllCategoryModelList[index];
                        return CategoryCard(
                          image: category?.categoryImg != null
                              ? NetworkImage(category!.categoryImg!)
                              : const AssetImage(
                            'assets/images/placeholder.png',
                          )
                          as ImageProvider,
                          title: category?.categoryName ?? '',
                        );
                      },
                    ),
                  );
                }
              }),
              const SizedBox(height: 16),

              // Placeholder product sections
              SectionHeader(title: 'Popular', onTap: () {}),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) =>
                      Container(
                        width: 120,
                        margin: const EdgeInsets.all(5),
                        color: Colors.grey.shade300,
                        child: const Center(child: Text("Product")),
                      ),
                ),
              ),

              SectionHeader(title: 'Special', onTap: () {}),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) =>
                      Container(
                        width: 120,
                        margin: const EdgeInsets.all(5),
                        color: Colors.grey.shade300,
                        child: const Center(child: Text("Product")),
                      ),
                ),
              ),

              SectionHeader(title: 'New', onTap: () {}),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) =>
                      Container(
                        width: 120,
                        margin: const EdgeInsets.all(5),
                        color: Colors.grey.shade300,
                        child: const Center(child: Text("Product")),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
