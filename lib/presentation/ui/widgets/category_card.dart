import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.fillColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.shop),
          ),
          SizedBox(height: 5,),
          Text("Electronics",style: TextStyle(
              fontSize: 14,
              color: AppColors.greenColor,
              letterSpacing: 0.4
          ),),
        ],

      ),
    );
  }
}