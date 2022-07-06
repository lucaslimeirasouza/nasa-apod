import 'package:nasa_apod/domain/models/nasa_model.dart';

abstract class INasaUseCase {
  Future<List<NasaModel>> obterNasa();
}
