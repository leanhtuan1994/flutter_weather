import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/base/bloc_base.dart';
import 'package:flutter_base/common/components/internationalization.dart';
import 'package:flutter_base/domain/entities/app_data.dart';
import 'package:flutter_base/domain/usecases/main_usecase.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  final MainUseCase mainUseCase;
  final initialData = AppData(
      locale:
          Locale(Languages.languages[0].code, Languages.languages[0].value));

  AppBloc({@required this.mainUseCase});

  final PublishSubject<AppData> _appDataController = PublishSubject<AppData>();

  Stream<AppData> get appDataStream => _appDataController.stream;

  @override
  void dispose() {
    _appDataController.close();
  }
}
