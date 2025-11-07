import 'package:flutter/material.dart';
import 'package:neo_shop/presentation/ui/widgets/custom_stepper.dart';
import 'package:neo_shop/utils/app_colors.dart';
import '../widget/product_image_slider.dart';
import '../widget/cart_to_cart.dart';
import '../widget/product_details_app_bar.dart';
import '../widget/size_picker.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}
class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  int selectedIndexColor = 0;
  int selectedSizeIndex = 0;

  List<Color> colors = [
    Colors.orange,
    Colors.black,
    Colors.blueAccent,
    Colors.grey,
    Colors.green,
  ];
  List<String> sizes = [
    "S","M","L","XL","XXL","XXXL"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                ProductImageSlider(),
                ProductDetailsAppBar(),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ProductDetails,
              ),
            ),
            CartToCartBottom(),
          ],
        ),
      ),
    );
  }
  Padding get ProductDetails {
    return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Addidas Shoe HK23476 - Black Edition",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        CustomStepper(
                          lowerLimit: 1,
                          upperLimit: 10,
                          stepValue: 1,
                          value: 1,
                          onChange: (newValue) {
                            print(newValue);
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.star_border,
                              size: 18,
                              color: Colors.amber,
                            ),
                            SizedBox(width: 2),
                            Text("4.5"),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Review",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),

                        Card(
                          color: Colors.grey,
                          shape: const CircleBorder(),
                          margin: EdgeInsets.zero,
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.favorite_border,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Color",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 28,
                      child: ListView.separated(
                        itemCount: colors.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {
                              selectedIndexColor = index;
                              if (mounted) {
                                setState(() {});
                              }
                            },
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: colors[index],
                              child: selectedIndexColor == index
                                  ? Icon(
                                      Icons.done,
                                      color: AppColors.blackLightColor,
                                    )
                                  : null,
                            ),
                          );
                        }, separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 8,
                          );
                      },
                      ),
                    ),
                    Text(
                      "Sizes",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 28,
                      child: SizePicker(sizes: sizes, onSelected: (int selectedSize){
                        selectedSizeIndex = selectedSize;
                      },
                          initialSelected: 0)
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,''')

                  ],
                ),
              );
  }
}



