import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CreateWeekPicker extends StatelessWidget {
  const CreateWeekPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios, color: AppColors.hexBA83DE),
          Text(
            "04 Mar - 11 Mar",
            style: TextStyle(color: AppColors.hexBA83DE, fontSize: 20),
          ),
          Icon(Icons.arrow_forward_ios, color: AppColors.hexBA83DE),
        ],
      ),
    );
  }
}
