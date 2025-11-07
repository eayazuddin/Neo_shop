import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_shop/presentation/ui/screens/base/controller/main_bottom_nav_controller.dart';
import 'package:neo_shop/presentation/ui/screens/product_list_screen.dart';
import '../widgets/category_card.dart';
import '../widgets/circular_icon_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/home/home_slider.dart';
import '../widgets/product_card.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  }
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return CategoryCard();
                    }),
              ),
              SizedBox(height: 5,),
              SectionHeader(
                  title: 'Popular',
                  onTap: () {
                    Get.to(productListScreen());
                  }
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return  productCard();
                }),
              ),
              SizedBox(height: 5,),
              SectionHeader(
                  title: 'Special',
                  onTap: () {
                    Get.to(productListScreen());
                  }
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return  productCard();
                    }),
              ),
              SizedBox(height: 5,),
              SectionHeader(
                  title: 'New',
                  onTap: () {
                    Get.to(productListScreen());
                  }
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return  productCard();
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}




