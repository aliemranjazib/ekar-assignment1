import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test1/constants/rest_api_url.dart';
import 'package:test1/features/view_vehicle/data/data_source/remote_date.dart';
import 'package:test1/features/view_vehicle/data/repo/repo.dart';
import 'package:test1/features/view_vehicle/domain/use_cases/vehicle_spec_usecase.dart';
import 'package:test1/features/view_vehicle/presentation/provider/vehicle_specs_notifer.dart';

import 'features/view_vehicle/domain/repositories/vehicle_spec_respository.dart';

final sl = GetIt.I; // Service location

Future<void> init() async {
  // Factory - each time a new instance of the Class

  // Presentation layer
  sl.registerFactory(() => VehicleSpecNotifier(vehicleUseCase: sl()));

  // Domain layer
  sl.registerFactory(() => VehicleUseCase(vehicleSpecsRepository: sl()));

  // Data layer
  sl.registerFactory<VehicleSpecsRepository>(
      () => VehivleDataRepoImp(vehicleDatasource: sl()));

  sl.registerFactory<VehicleSpecsSource>(() => VehicleSpecsImp(
          dio: Dio(BaseOptions(
        baseUrl: ApiUrls.vehicleSpecification,
        receiveDataWhenStatusError: true,
        headers: {
          'content-type': 'application/json',
        },
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
      ))));
}
