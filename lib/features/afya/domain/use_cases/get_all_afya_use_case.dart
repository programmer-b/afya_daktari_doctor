import 'package:afya_daktari_doctor/features/afya/domain/entities/afya.dart';
import 'package:afya_daktari_doctor/features/afya/domain/repositories/afya_repository_base.dart';
import 'package:afya_daktari_doctor/core/use_case/use_case_base.dart';
import 'package:afya_daktari_doctor/core/use_case/no_params.dart';
import 'package:dartz/dartz.dart';
import 'package:afya_daktari_doctor/core/failures/failure.dart';

class GetAllAfyaUseCase extends UseCaseBase<List<Afya>, NoParams> {
   final AfyaRepositoryBase repository;
   
   GetAllAfyaUseCase(this.repository);
   
   @override
   Future<Either<Failure, List<Afya>>> call(NoParams params) async {
       return await repository.getAll();
   }
}
