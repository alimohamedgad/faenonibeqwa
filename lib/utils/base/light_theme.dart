import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

ThemeData get lightMode => ThemeData.light().copyWith(
      scaffoldBackgroundColor: lightScaffold,
      iconTheme: const IconThemeData(
        color: lightIconColor,
      ),
      textTheme: TextTheme(
        displayMedium: TextStyle(
          color: Colors.black,
          fontSize: 18.sp,
          fontFamily: "Cairo",
          fontWeight: FontWeight.w500,
        ),
      ),
      hoverColor: lightScaffold,
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: Colors.blue[100]),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStatePropertyAll<double>(0),
          iconColor: MaterialStatePropertyAll<Color>(lightButton),
        ),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
            elevation: MaterialStatePropertyAll<double>(0),
            backgroundColor: MaterialStatePropertyAll<Color>(lightButton),
            padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(10)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))))),
      ),
      cardColor: lightAppBar,
      canvasColor: lightIconColor,
      indicatorColor: indicatorColor,
      appBarTheme: AppBarTheme(
        color: lightAppBar,
        toolbarHeight: 50.h,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.h),
        elevation: 0,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 0,
        backgroundColor: lightAppBar,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: lightChatBox,
        iconColor: lightText,
        isCollapsed: true,
        filled: false,
      ),
    );

TextStyle get lightTextStyle => const TextStyle(
      color: lightText,
      height: 2,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
