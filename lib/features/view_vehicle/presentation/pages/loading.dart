import 'package:flutter/material.dart';

import '../skelton/skelton_widget.dart';

class LoadingVehicle extends StatelessWidget {
  const LoadingVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkeletonWidget(
                width: size.width,
                height: 84,
              ),
              const SizedBox(
                height: 8,
              ),
              SkeletonWidget(
                width: size.width * 0.70,
                height: 84,
              ),
              const SizedBox(
                height: 8,
              ),
              SkeletonWidget(
                width: size.width * 0.80,
                height: 84,
              ),
              const SizedBox(
                height: 8,
              ),
              SkeletonWidget(
                width: size.width * 0.76,
                height: 84,
              ),
              const SizedBox(
                height: 8,
              ),
              SkeletonWidget(
                width: size.width * 0.76,
                height: 84,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
