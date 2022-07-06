import 'package:nasa_apod/domain/models/nasa_model.dart';
import '../../di.dart';
import '../repositories/inasa_repository.dart';
import 'inasa_usecase.dart';

class NasaUsecase implements INasaUseCase {
  INasaRepository get _repository => di.get<INasaRepository>();

  @override
  Future<List<NasaModel>> obterNasa() async {
    return await _repository.obterNasa();
  }
}
