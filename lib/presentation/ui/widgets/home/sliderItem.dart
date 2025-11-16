import 'package:flutter/material.dart';
import '../../../../../utils/app_colors.dart';

class SliderItemCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;
  final VoidCallback onPressed;

  const SliderItemCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              title.isNotEmpty ? title : "No Title",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Image
          SizedBox(
            height: 90,
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (imageUrl.isNotEmpty)
                  Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 85,
                    errorBuilder: (_, __, ___) =>
                    const Icon(Icons.broken_image, color: Colors.white),
                  )
                else
                  const Icon(Icons.image_not_supported, color: Colors.white),

                Positioned(
                  left: 35,
                  top: 10,
                  child: SizedBox(
                    height: 70,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Price
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              price.isNotEmpty ? price : "No Price",
              style: const TextStyle(
                fontSize: 11,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Button
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox(
              width: double.infinity,
              height: 34,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.primaryColor,
                ),
                onPressed: onPressed,
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
