import 'package:afya_daktari_doctor/features/afya/domain/entities/afya.dart';
import 'package:afya_daktari_doctor/core/failures/failure.dart';
import 'package:afya_daktari_doctor/features/afya/data/data_sources/afya_remote_data_source.dart';
import 'package:afya_daktari_doctor/features/afya/domain/repositories/afya_repository_base.dart';
import 'package:dartz/dartz.dart';

class AfyaRepository extends AfyaRepositoryBase {
   AfyaRepository(super.remote);
   
   @override
   Future<Either<Failure,List<Afya>>> getAll() async {
       try {
           return Right(await remote.getAll());
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
   }
   
   @override
   Future<Either<Failure,Afya>> getById(int id) async {
       try {
           return Right(await remote.getById(id));
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
    }
    
   @override
   Future<Either<Failure,Afya>> create(Afya afya) async {
       try {
           return Right(await remote.create(afya));
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
    }
    
   @override
   Future<Either<Failure,Afya>> update(Afya afya) async {
       try {
           return Right(await remote.update(afya));
       } catch (e) {
            return Left(UnhandledFailure(message: e.toString()));
       }
   }
   
   @override
   Future<Either<Failure,void>> delete(int id) async {
       try {
           return Right(await remote.delete(id));
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
   }
   
   @override
   Future<Either<Failure,void>> deleteAll() async {
       try {
           return Right(await remote.deleteAll());
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
    }
    
    
    
}
