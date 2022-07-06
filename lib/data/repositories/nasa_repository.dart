import 'package:dio/dio.dart';
import 'package:nasa_apod/data/entities/nasa_entity.dart';
import 'package:nasa_apod/domain/repositories/inasa_repository.dart';
import '../../di.dart';

class NasaRepository implements INasaRepository {
  Dio get _dio => di.get<Dio>();
  final String apiKey = 'api_key=jMUBIqcwT1MM72yWsJ0OwhWSu4gLhtxeg8qRxns2';

  @override
  Future<List<NasaEntity>> obterNasa() async {
    try {
      final response = await _dio.get(
          'https://api.nasa.gov/planetary/apod?$apiKey',
          queryParameters: {'count': 10});

      if (response.statusCode == 204 || response.statusCode == 503) {
        throw MessageException('Erro');
      }
      final list = response.data as List;
      return list.map((e) => NasaEntity.fromMap(e)).toList();
    } on DioError catch (e) {
      throw e.message;
    }
  }
}

class MessageException {
  final String message;

  MessageException(this.message);

  @override
  String toString() => message;
}
