import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:neo_shop/presentation/ui/screens/product_details/screen/product_details_screen.dart';

import '../../../gen/assets.gen.dart';
import '../../../utils/app_colors.dart';

class productCard extends StatelessWidget {
  const productCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        Get.to(ProductDetailsScreen());
      },
      child: Card(
        color: Colors.green.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: SizedBox(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image section
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.fillColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: AssetImage(Assets.images.shoe.path),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Padding for text and row
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nike Shoe ghhgvc jh",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$90",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent,
                          ),
                        ),

                        Row(
                          children: const [
                            Icon(
                              Icons.star_border,
                              size: 15,
                              color: Colors.amber,
                            ),
                            SizedBox(width: 2),
                            Text("4.5"),
                          ],
                        ),
                        Card(
                          color: Colors.grey,
                          shape: const CircleBorder(),
                          margin: EdgeInsets.zero,
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.favorite_border,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
