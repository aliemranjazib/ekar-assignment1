import 'package:flutter/material.dart';
import 'package:test1/shared/style.dart';

chipList() {
  return Wrap(
    spacing: 6.0,
    runSpacing: 6.0,
    children: <Widget>[
      _buildChip(
        'Gamer',
      ),
      _buildChip(
        'Hacker',
      ),
      _buildChip(
        'Developer',
      ),
      _buildChip(
        'Racer',
      ),
      _buildChip(
        'Traveller',
      ),
    ],
  );
}

Widget _buildChip(
  String label,
) {
  return Chip(
    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
    shape: StadiumBorder(side: BorderSide()),
    label: Text(
      label,
      style: const TextStyle(),
    ),
    backgroundColor: AppColors.bgColor,
    elevation: 6.0,
    shadowColor: Colors.grey[60],
    // padding: const EdgeInsets.all(8.0),
  );
}
