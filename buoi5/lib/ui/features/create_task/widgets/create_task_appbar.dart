import 'package:buoi5/ui/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CreateTaskAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CreateTaskAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 50, // Đảm bảo đủ không gian cho nút back
      leading: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Material(
          color: AppColors.hex020206, // Màu nền của nút
          shape: const CircleBorder(), // Định dạng hình tròn
          child: InkWell(
            onTap: () {},
            customBorder: const CircleBorder(), // Đảm bảo ripple theo hình tròn
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ), // Viền trắng dày 1.5px
              ),
              child: Icon(
                Icons.arrow_back,
                color: AppColors.hexFFFFFF,
                size: 20,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        "Create new task",
        style: TextStyle(
          color: AppColors.hexFFFFFF,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      centerTitle: true,
      backgroundColor: AppColors.hex020206,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
