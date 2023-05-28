import 'package:dio/dio.dart';

class ApiUrls {
  ApiUrls._();

  static const String baseUrl = '';
  static const String vehicleApiServerKey = '';
  static const String vehicleSpecification =
      'https://api.carsxe.com/specs?key=tha91z6lv_j8u1nv4xs_ilfswb1e3&vin=JTDZN3EU0E3298500';
  BaseOptions base = BaseOptions(
    baseUrl: baseUrl,
    headers: {
      'content-type': 'application/json',
    },
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
  );
  static Options options = Options(
    headers: {
      'content-type': 'application/json',
    },
    receiveTimeout: const Duration(seconds: 60),
  );
}
