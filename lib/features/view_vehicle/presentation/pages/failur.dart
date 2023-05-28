import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/core/failures/failures.dart';
import 'package:test1/features/view_vehicle/presentation/provider/vehicle_specs_notifer.dart';

class FailureJoke extends StatelessWidget {
  final Failure failure;
  final WidgetRef ref;

  const FailureJoke({
    Key? key,
    required this.failure,
    required this.ref,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            failure.getMessage(),
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          ElevatedButton(
            child: Text("aaaa"),
            onPressed: () {
              ref.read(vehicleSpecsProvider.notifier).getVehicle();
            },
          ),
        ],
      ),
    );
  }
}
