import '../models/nasa_model.dart';

abstract class INasaRepository {
  Future<List<NasaModel>> obterNasa();
}
