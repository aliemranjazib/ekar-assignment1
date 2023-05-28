import 'package:flutter/material.dart';

import '../../../../shared/style.dart';

Widget bookingAndContracts(
    String header, String currency, String price, VoidCallback ontap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Text(header, style: AppTextStyle.h2),
          Row(
            children: [
              Text("$currency", style: AppTextStyle.h3),
              const SizedBox(width: 10),
              Text("$price", style: AppTextStyle.h1),
            ],
          ),
        ],
      ),
      GestureDetector(
        onTap: ontap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.bgColor.withOpacity(1))),
          child: Text("how contracts work?"),
        ),
      ),
    ],
  );
}
