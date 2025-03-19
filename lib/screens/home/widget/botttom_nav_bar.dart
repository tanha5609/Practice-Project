import 'package:flutter/material.dart';

class Fbottombar extends StatelessWidget {
  const Fbottombar({
    super.key, required this.currentIndex, required this.onTapMethod,
  });
final int currentIndex;
  final Function(int) onTapMethod;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTapMethod,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "Wishlist",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: "Order",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Account",
        ),
      ],
    );
  }
}
