import 'package:flutter_test/flutter_test.dart';
import 'package:nasa_apod/domain/models/nasa_model.dart';
import '../mocks/nasa_usecase_mock.dart';

main() {
  late final useCase;
  setUpAll(() {
    useCase = NasaUseCaseMock();
  });

  test('Deve trazer uma lista', () async {
    final list = await useCase.obterNasa();

    expect(list.isNotEmpty, true);
    expect(list, isA<List<NasaModel>>());
  });
}
