import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class HomeDailtTask extends StatelessWidget {
  const HomeDailtTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 19),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: AppColors.hex181818,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 15),
              child: Text(
                "Daily Task",
                style: TextStyle(
                  color: AppColors.hexFFFFFF,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                "2/3 Task Completed",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  color: AppColors.hexCCFFFFFF,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 31),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You are almost done go ahead",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: AppColors.hexCCFFFFFF,
                    ),
                  ),
                  Text(
                    "66%",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.hexFFFFFF,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 27),
              child: Stack(
                children: [
                  Container(
                    height: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.hex69BA83DE,
                    ),
                  ),
                  Container(
                    height: 18,
                    width: 200,
                    decoration: BoxDecoration(
                      color: AppColors.hexBA83DE,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
