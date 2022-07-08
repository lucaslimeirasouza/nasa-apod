import 'package:nasa_apod/domain/models/nasa_model.dart';
import 'package:nasa_apod/domain/usecases/inasa_usecase.dart';

class NasaUseCaseMock implements INasaUseCase {
  @override
  Future<List<NasaModel>> obterNasa() async {
    return [NasaModel()];
  }
}
