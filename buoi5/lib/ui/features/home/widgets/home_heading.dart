import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class HomeHeading extends StatelessWidget {
  const HomeHeading({super.key, required this.title});
  final title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.hexFFFFFF,
            ),
          ),
          Text(
            "See All",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.hexBA83DE,
            ),
          ),
        ],
      ),
    );
  }
}
