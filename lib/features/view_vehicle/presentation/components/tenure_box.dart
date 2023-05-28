import 'package:flutter/material.dart';

import '../../../../shared/style.dart';

Widget tenureBox(String header, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(header, style: AppTextStyle.h2),
      Row(
        children: [
          Text("$value", style: AppTextStyle.h2.copyWith(fontSize: 20)),
          const SizedBox(width: 10),
        ],
      ),
    ],
  );
}
