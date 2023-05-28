import 'package:test1/core/exceptions/exceptions.dart';
import 'package:test1/features/view_vehicle/data/model/model.dart';
import 'package:test1/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:test1/features/view_vehicle/domain/repositories/vehicle_spec_respository.dart';

import '../data_source/remote_date.dart';

class VehivleDataRepoImp implements VehicleSpecsRepository {
  final VehicleSpecsSource vehicleDatasource;

  const VehivleDataRepoImp({required this.vehicleDatasource});
  @override
  Future<Either<Failure, VehicleModel>> getVehicleSpec() async {
    try {
      final result = await vehicleDatasource.getVehicleSpecs();
      return right(result);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }
}
