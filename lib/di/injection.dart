import 'package:flutter_base/data/core/api_client.dart';
import 'package:flutter_base/data/data_source/remote_data_source.dart';
import 'package:flutter_base/data/repositories/ApiRepositoryIml.dart';
import 'package:flutter_base/domain/repositories/api_repository.dart';
import 'package:flutter_base/domain/usecases/main_usecase.dart';
import 'package:flutter_base/presentation/common/app_bloc.dart';
import 'package:flutter_base/presentation/screens/home/home_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

Future init() async {
  getIt.registerLazySingleton<AppApiService>(() => AppApiService());

  getIt.registerLazySingleton<AppRemoteDataSource>(
      () => AppRemoteDataSourceIml(apiService: getIt.get<AppApiService>()));

  getIt.registerLazySingleton<ApiRepository>(() =>
      ApiRepositoryIml(remoteDataSource: getIt.get<AppRemoteDataSource>()));

  getIt.registerLazySingleton<MainUseCase>(
      () => MainUseCaseImpl(apiRepository: getIt.get<ApiRepository>()));

  //blocs
  getIt.registerFactory(() => AppBloc(mainUseCase: getIt.get<MainUseCase>()));
  getIt.registerFactory(() => HomeBloc());
}
