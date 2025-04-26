import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 19),
        child: TextField(
          decoration: InputDecoration(
            fillColor: AppColors.hex1E1E1E,
            hintText: "Search Task Here",
            hintStyle: TextStyle(
              color: AppColors.hexFFFFFF,
              fontFamily: "Inter",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Icon(Icons.search, color: AppColors.hexFFFFFF),
          ),
        ),
      ),
    );
  }
}
