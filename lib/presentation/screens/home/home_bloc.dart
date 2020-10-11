import 'package:flutter_base/base/bloc_base.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BlocBase {
  final initImage =
      "https://source.unsplash.com/random?weather${DateTime.now().millisecondsSinceEpoch}";
  final _imageController = PublishSubject<String>();

  Stream<String> get imageStream => _imageController.stream;

  @override
  void dispose() {
    _imageController.close();
  }
}
