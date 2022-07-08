import 'package:nasa_apod/domain/models/nasa_model.dart';
import 'package:nasa_apod/domain/repositories/inasa_repository.dart';

class NasaRepositoryMock implements INasaRepository {
  @override
  Future<List<NasaModel>> obterNasa() async {
    return [NasaModel()];
  }
}
