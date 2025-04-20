import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Color(0xff020206),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Progress",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 22.sp,
                            height: 0.91.sp,
                            letterSpacing: -0.5.sp,
                          ),
                        ),

                        Text(
                          "See All",
                          style: TextStyle(
                            color: Color(0xffBA83DE),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            height: 0.91.sp,
                            letterSpacing: -0.5.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      padding: EdgeInsets.all(15.sp),
                      height: 139.sp,
                      decoration: BoxDecoration(
                        color: Color(0xff181818),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily Task",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              height: 1.sp,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "3/3 Task Completed",
                            style: TextStyle(
                              color: Color(0xCCFFFFFF),
                              fontFamily: "Inter",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.sp,
                            ),
                          ),
                          SizedBox(height: 9.h),
                          Row(
                            children: [
                              Text(
                                "You are almost done go ahead",
                                style: TextStyle(
                                  color: Color(0xCCFFFFFF),
                                  fontFamily: "Inter",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w200,
                                  height: 1.sp,
                                ),
                              ),
                              SizedBox(width: 110.w),
                              Text(
                                "100%",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: "Inter",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 1.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.h),
                          //thanh prosecser
                          Container(
                            height: 18.sp,
                            width: 350.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffBA83DE),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today’s Task",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 22.sp,
                            height: 0.91.sp,
                            fontFamily: "Roboto",
                            letterSpacing: -0.5,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            color: Color(0xCCba83de),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            height: 1.25.sp,
                            fontFamily: "Roboto",
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Container(
                          width: 15.sp,
                          height: 80.sp,
                          decoration: BoxDecoration(
                            color: Color(0xffFACBBA),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7.5),
                              bottomLeft: Radius.circular(7.5),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(11.sp),
                            height: 80.sp,
                            decoration: BoxDecoration(
                              color: Color(0xff1F1F1F),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mobile App Research",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Inter",
                                        fontSize: 16.sp,
                                        height: 1,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 5.sp),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/calenda.png",
                                          width: 15.sp,
                                          height: 16.67.sp,
                                        ),
                                        SizedBox(width: 7.sp),
                                        Text(
                                          "4 Oct",
                                          style: TextStyle(
                                            color: Color(0xccffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/images/checkbox.png",
                                  width: 26.sp,
                                  height: 26.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 15.sp,
                          height: 80.sp,
                          decoration: BoxDecoration(
                            color: Color(0xffD7F0FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7.5),
                              bottomLeft: Radius.circular(7.5),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(11.sp),
                            height: 80.sp,
                            decoration: BoxDecoration(
                              color: Color(0xff1F1F1F),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Prepare Wireframe for Main Flow",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Inter",
                                        fontSize: 16.sp,
                                        height: 1,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 5.sp),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/calenda.png",
                                          width: 15.sp,
                                          height: 16.67.sp,
                                        ),
                                        SizedBox(width: 7.sp),
                                        Text(
                                          "4 Oct",
                                          style: TextStyle(
                                            color: Color(0xccffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/images/checkbox.png",
                                  width: 26.sp,
                                  height: 26.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          width: 15.sp,
                          height: 80.sp,
                          decoration: BoxDecoration(
                            color: Color(0xffFAD9FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7.5),
                              bottomLeft: Radius.circular(7.5),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(11.sp),
                            height: 80.sp,
                            decoration: BoxDecoration(
                              color: Color(0xff1F1F1F),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Prepare Screens",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Inter",
                                        fontSize: 16.sp,
                                        height: 1.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 5.sp),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/calenda.png",
                                          width: 15.sp,
                                          height: 16.67.sp,
                                        ),
                                        SizedBox(width: 7.sp),
                                        Text(
                                          "4 Oct",
                                          style: TextStyle(
                                            color: Color(0xccffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/images/checkBoxFalse.png",
                                  width: 26.sp,
                                  height: 26.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
