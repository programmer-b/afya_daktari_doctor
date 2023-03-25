import 'package:afya_daktari_doctor/features/afya/domain/entities/afya.dart';
import 'package:afya_daktari_doctor/features/afya/domain/repositories/afya_repository_base.dart';
import 'package:afya_daktari_doctor/core/use_case/use_case_base.dart';
import 'package:dartz/dartz.dart';
import 'package:afya_daktari_doctor/core/failures/failure.dart';

class CreateAfyaUseCase extends UseCaseBase<Afya, Afya> {
   final AfyaRepositoryBase repository;
   
   CreateAfyaUseCase(this.repository);
   
   @override
   Future<Either<Failure, Afya>> call(Afya params) async {
       return await repository.create(params);
   }
}
