import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 300,
      height: 400,
      
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Discount Tag
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "50% OFF",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 24,
              ),
            ],
          ),

          // Product Image
          SizedBox(
            width: 150,
            height: 150,
            child: Image(
              image: AssetImage('assets/images/download.jpg'), // Add your image here
              fit: BoxFit.contain,
            ),
          ),

          // Product Name
          const Text(
            "Nike Air Shoes",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),

          // Price Section
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "\$450",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 15),
              Text(
                "\$600",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[400],
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
      );
    
  }
}