import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:test1/constants/rest_api_url.dart';
import 'package:test1/core/utils/exception.dart';
import 'package:test1/features/view_vehicle/data/model/model.dart';

abstract class VehicleSpecsSource {
  Future<VehicleModel> getVehicleSpecs();
}

class VehicleSpecsImp extends VehicleSpecsSource {
  final Dio dio;
  VehicleSpecsImp({required this.dio});
  @override
  Future<VehicleModel> getVehicleSpecs() async {
    try {
      Response response;
      response = await dio.get(ApiUrls.vehicleSpecification);
      if (response.statusCode != 200) {
        throw ExceptionUtils.dioStatusCodeErrorHandle(response.statusCode);
      } else {
        return VehicleModel.fromJson(response.data);
      }
    } on DioError catch (e, stacktrace) {
      throw ExceptionUtils.dioErrorHandle(e, stacktrace);
    } catch (e) {}
    throw UnimplementedError();
  }
}

class RemoteDate {
  Future<VehicleModel> getVehicleData() async {
    VehicleModel? vehicleData;
    http.Response response = await http.get(Uri.parse(
        "https://api.carsxe.com/specs?key=tha91z6lv_j8u1nv4xs_ilfswb1e3&vin=JTDZN3EU0E3298500"));

    if (response.statusCode == 200) {
      Map<String, dynamic> result = json.decode(response.body);
      vehicleData = VehicleModel.fromJson(result);

      print(vehicleData);
      return vehicleData;
    } else {
      return vehicleData!;
    }
  }
}
