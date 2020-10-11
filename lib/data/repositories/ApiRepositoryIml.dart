import 'package:flutter_base/data/data_source/remote_data_source.dart';
import 'package:flutter_base/domain/repositories/api_repository.dart';

class ApiRepositoryIml extends ApiRepository {
  final AppRemoteDataSource remoteDataSource;

  ApiRepositoryIml({this.remoteDataSource});
}
