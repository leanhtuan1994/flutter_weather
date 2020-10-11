import 'package:flutter_base/domain/repositories/api_repository.dart';

abstract class MainUseCase {}

class MainUseCaseImpl extends MainUseCase {
  final ApiRepository apiRepository;

  MainUseCaseImpl({this.apiRepository});
}
