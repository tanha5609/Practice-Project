import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lab7/utils/contants/colors.dart';



class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Mega Shop",
      style: TextStyle(
        fontFamily: "DMSans",
        fontWeight: FontWeight.w700,
        color: FColors.primaryNavyBlack,
        ),
      ),
      centerTitle: true,
      actions: [
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 5),
          child: Icon(Iconsax.notification_bing),
                  ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 5),
          child: Icon(Iconsax.shopping_cart),
          ),
      
      ],
    );
  }
}