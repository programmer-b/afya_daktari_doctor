import 'package:afya_daktari_doctor/features/afya/data/data_sources/afya_remote_data_source.dart';
import 'package:afya_daktari_doctor/features/afya/domain/entities/afya.dart';
import 'package:afya_daktari_doctor/core/failures/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AfyaRepositoryBase {
   final AfyaRemoteDataSourceBase remote;
   
   AfyaRepositoryBase(this.remote);
   
   Future<Either<Failure, List<Afya>>> getAll();
   
   Future<Either<Failure, Afya>> getById(int id);
   
   Future<Either<Failure, Afya>> create(Afya afya);
   
   Future<Either<Failure, Afya>> update(Afya afya);
   
   Future<Either<Failure, void>> delete(int id);
   
   Future<Either<Failure, void>> deleteAll();
}
