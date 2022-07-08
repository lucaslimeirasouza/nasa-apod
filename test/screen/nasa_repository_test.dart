import 'package:flutter_test/flutter_test.dart';
import 'package:nasa_apod/domain/models/nasa_model.dart';
import '../mocks/nasa_repository_mock.dart';

main() {
  late final repository;
  setUpAll(() {
    repository = NasaRepositoryMock();
  });

  test('Deve trazer uma lista', () async {
    final list = await repository.obterNasa();

    expect(list.isNotEmpty, true);
    expect(list, isA<List<NasaModel>>());
  });
}
