import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/features/view_vehicle/data/data_source/remote_date.dart';
import 'package:test1/features/view_vehicle/presentation/pages/loaded_data.dart';
import 'package:test1/features/view_vehicle/presentation/provider/vehicle_specs_notifer.dart';
import 'package:test1/shared/style.dart';

import '../../../../core/failures/failures.dart';
import '../../../view_on_board/view_on_board.dart';
import '../../data/model/model.dart' as vehicle;
import 'failur.dart';
import 'loading.dart';

class ViewVehicle extends ConsumerWidget {
  const ViewVehicle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    vehicle.VehicleModel? vehicleModel =
        ref.watch(vehicleSpecsProvider).vehicleModel;
    Failure? failure = ref.watch(vehicleSpecsProvider).failure;
    bool isLoading = ref.watch(vehicleSpecsProvider).isLoading;
    return Scaffold(
      bottomNavigationBar: (isLoading || failure != null)
          ? LoadingVehicle()
          : SizedBox(
              height: 180,
              child: BottomAppBar(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(vehicleModel!.attributes!.model!,
                          style: AppTextStyle.h1),
                      Text(vehicleModel.attributes!.passengerVolume!,
                          style: AppTextStyle.h3),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ViewOnBoardPage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: AppColors.bgColor.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "PROCEED WITH YOUR SELCTION",
                            style:
                                AppTextStyle.h2.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "eKar",
            style: TextStyle(color: AppColors.bgColor.withOpacity(0.8)),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.navigate_before))),
      body: SafeArea(
        child: Builder(builder: (context) {
          if (isLoading) {
            return const LoadingVehicle();
          }
          if (vehicleModel != null) {
            return LoadedData(vehicle: vehicleModel, ref: ref);
          } else if (failure != null) {
            return FailureJoke(failure: failure, ref: ref);
          }
          return const LoadingVehicle();
        }),
      ),
    );
  }
}
