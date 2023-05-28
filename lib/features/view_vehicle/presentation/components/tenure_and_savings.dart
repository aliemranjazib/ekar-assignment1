import 'package:flutter/material.dart';
import 'package:test1/features/view_vehicle/presentation/components/tenure_box.dart';

Row tenure_andsavings() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      tenureBox("Tenure", "1 to 9 Months"),
      MaterialButton(
        color: Color.fromARGB(255, 249, 104, 104),
        padding: EdgeInsets.all(10),
        shape: StadiumBorder(),
        onPressed: () {},
        child: Text(
          "SAVING OF AED 1,500",
          style: const TextStyle(fontSize: 11, color: Colors.white),
        ),
      ),
    ],
  );
}
