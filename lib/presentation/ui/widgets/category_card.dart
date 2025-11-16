import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final ImageProvider image;
  final String title;

  const CategoryCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.fillColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image(image: image, height: 30, width: 30),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.blackLightColor,
              letterSpacing: 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
