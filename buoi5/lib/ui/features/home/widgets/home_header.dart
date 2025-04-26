import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({required this.title, super.key});
  final title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Text(
                    "You have got 5 tasks\ntoday to complete ",
                    style: TextStyle(color: AppColors.hexFFFFFF, fontSize: 20),
                  ),

                  Positioned(
                    // Đặt vị trí của bút chì
                    left:
                        170, // Điều chỉnh giá trị này để căn chỉnh theo chiều ngang
                    top:
                        30, // Điều chỉnh giá trị này để căn chỉnh theo chiều dọc
                    child: Image.asset(
                      "assets/images/pencil.png",
                      width: 20,
                      height: 22,
                    ),
                  ),
                ],
              ),
            ),

            Stack(
              children: [
                Container(
                  width: 40,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColors.hex69BA83DE,
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                Image.asset(
                  "assets/images/userImage.png",
                  width: 40,
                  height: 45,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/detail.png",
                    width: 15,
                    height: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
