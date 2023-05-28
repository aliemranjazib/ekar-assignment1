import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/features/view_vehicle/data/model/model.dart';
import 'package:test1/features/view_vehicle/domain/use_cases/vehicle_spec_usecase.dart';
import 'package:test1/features/view_vehicle/presentation/provider/vehicle_spec_state.dart';

import '../../../../injection.dart';
import '../../domain/repositories/vehicle_spec_respository.dart';

class VehicleSpecNotifier extends StateNotifier<VehicleState> {
  final VehicleUseCase vehicleUseCase;
  VehicleSpecNotifier({required this.vehicleUseCase})
      : super(VehicleState(vehicleModel: VehicleModel())) {
    getVehicle();
  }

  getVehicle() async {
    state = state.copyWith(isLoading: true);
    VehicleSpecsRepository? vehicleSpecsRepository;
    final result = await vehicleUseCase.getVehcileSpecs();
    result.fold(
        (failure) => state = state.copyWith(failure: failure, isLoading: false),
        (success) =>
            state = state.copyWith(vehicleModel: success, isLoading: false));
  }
}

final vehicleSpecsProvider =
    StateNotifierProvider<VehicleSpecNotifier, VehicleState>(
        (ref) => sl<VehicleSpecNotifier>());
