import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lab7/utils/contants/colors.dart';



class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
    required this.title,
    this.firstIcon = Iconsax.notification_bing,
    required this.secondIcon,
    this.backButton = true,
  });

  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  final bool backButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:backButton ? Icon(Iconsax.arrow_left_1) : null,
      title: Text( 
      title,
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
          child: Icon(firstIcon),
                  ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 5),
          child: Icon(secondIcon),
          ),
      
      ],
    );
  }
}