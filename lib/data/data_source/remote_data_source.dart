import 'package:flutter/foundation.dart';
import 'package:flutter_base/data/core/api_client.dart';

abstract class AppRemoteDataSource {}

class AppRemoteDataSourceIml extends AppRemoteDataSource {
  final AppApiService apiService;

  AppRemoteDataSourceIml({@required this.apiService});
}
