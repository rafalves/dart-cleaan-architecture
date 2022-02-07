import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 1000.00,
    );

    expect(carroEntity, isNotNull);
  });

  test('Espero que a entidade portas seja 2', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 1000.00,
    );

    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que o valor real seja 2000.00', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 1000.00,
    );
    var resultadoEsperado = 2000.00;

    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valor seja 0', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 0,
      valor: 1000.00,
    );
    var valorEsperado = 0.00;
    expect(carroEntity.valorReal, valorEsperado);
  });

  test('Espero que o valor seja 30000', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 15000.00,
    );
    carroEntity.setLogica();
    var valorEsperado = 30000.00;
    expect(carroEntity.valor, valorEsperado);
  });
}
