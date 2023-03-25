import 'package:afya_daktari_doctor/features/afya/domain/repositories/afya_repository_base.dart';
import 'package:afya_daktari_doctor/core/use_case/use_case_base.dart';
import 'package:dartz/dartz.dart';
import 'package:afya_daktari_doctor/core/failures/failure.dart';

class DeleteAfyaUseCase extends UseCaseBase<void, int> {
   final AfyaRepositoryBase repository;
   
   DeleteAfyaUseCase(this.repository);
   
   @override
   Future<Either<Failure, void>> call(int params) async {
       return await repository.delete(params);
   }
}
