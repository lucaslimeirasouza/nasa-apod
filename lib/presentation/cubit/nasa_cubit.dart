import 'package:nasa_apod/domain/models/nasa_model.dart';
import 'package:bloc/bloc.dart';
import '../../domain/usecases/inasa_usecase.dart';
import '../../domain/usecases/nasa_usecase.dart';
import 'nasa_state.dart';

class NasaCubit extends Cubit<NasaState> {
  NasaCubit() : super(NasaState.initial());

  INasaUseCase nasaUseCase = NasaUsecase();
  List<NasaModel> list = [];
  List<NasaModel> listfiltro = [];

  Future<void> load() async {
    emit(NasaState.loading());
    list = await nasaUseCase.obterNasa();
    listfiltro = list;
    emit(NasaState.initial());
  }

  Future<void> onChanged(String value) async {
    emit(NasaState.loading());
    if (value.isEmpty) {
      listfiltro = list;
    } else {
      listfiltro = list
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    emit(NasaState.initial());
  }
}
