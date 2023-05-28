import 'package:flutter/material.dart';

import '../../../../shared/style.dart';

Widget monthAndContractBox(String header, String value, String month) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(header, style: AppTextStyle.h2),
      Row(
        children: [
          Text("$value", style: AppTextStyle.h1),
          const SizedBox(width: 10),
          Text("$month", style: AppTextStyle.h2),
        ],
      ),
    ],
  );
}
