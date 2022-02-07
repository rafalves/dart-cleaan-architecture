import 'package:clean_architecture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _carrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._carrosPorCorDataSource);
  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _carrosPorCorDataSource(cor);
  }
}
