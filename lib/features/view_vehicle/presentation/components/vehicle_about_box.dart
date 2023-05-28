import 'package:flutter/material.dart';

import '../../../../shared/style.dart';

Widget vehicl_about_box(String feature) {
  return Padding(
    padding: const EdgeInsets.only(right: 7),
    child: Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Icon(
              Icons.car_repair,
              size: 35,
            ),
            Text("$feature")
          ],
        ),
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
