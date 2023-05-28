// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test1/features/view_vehicle/data/model/model.dart';

import '../../../../core/failures/failures.dart';

part 'vehicle_spec_state.freezed.dart';

@freezed
class VehicleState with _$VehicleState {
  const factory VehicleState({
    @Default(true) bool isLoading,
    VehicleModel? vehicleModel,
    Failure? failure,
  }) = _VehicleState;

  const VehicleState._();
}
