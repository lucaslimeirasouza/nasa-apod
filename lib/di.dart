import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'data/repositories/nasa_repository.dart';
import 'domain/repositories/inasa_repository.dart';

final di = GetIt.instance;

void setupDi() {
  _repositories();
}

void _repositories() {
  di.registerFactory<INasaRepository>(() => NasaRepository());
  di.registerFactory<Dio>(() => Dio());
}
