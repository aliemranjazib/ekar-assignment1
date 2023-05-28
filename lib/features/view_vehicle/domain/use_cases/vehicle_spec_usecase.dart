import 'package:dartz/dartz.dart';
import 'package:test1/core/failures/failures.dart';
import 'package:test1/features/view_vehicle/data/model/model.dart';
import 'package:test1/features/view_vehicle/domain/repositories/vehicle_spec_respository.dart';

class VehicleUseCase {
  final VehicleSpecsRepository vehicleSpecsRepository;
  VehicleUseCase({required this.vehicleSpecsRepository});

  Future<Either<Failure, VehicleModel>> getVehcileSpecs() async {
    await Future.delayed(const Duration(seconds: 1));
    return vehicleSpecsRepository.getVehicleSpec();
  }
}
