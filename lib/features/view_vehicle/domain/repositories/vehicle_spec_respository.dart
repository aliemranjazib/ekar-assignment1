import 'package:dartz/dartz.dart';
import 'package:test1/core/failures/failures.dart';
import 'package:test1/features/view_vehicle/data/model/model.dart';

abstract class VehicleSpecsRepository {
  Future<Either<Failure, VehicleModel>> getVehicleSpec();
}
