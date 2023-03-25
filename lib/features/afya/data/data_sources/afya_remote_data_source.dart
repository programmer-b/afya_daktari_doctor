import 'package:afya_daktari_doctor/features/afya/domain/entities/afya.dart';
import 'package:afya_daktari_doctor/core/services/afya_base.dart';

abstract class AfyaRemoteDataSourceBase {
   final AfyaBase http;
       
   AfyaRemoteDataSourceBase(this.http);
       
   Future<List<Afya>> getAll();
       
   Future<Afya> getById(int id);
       
   Future<Afya> create(Afya afya);
       
   Future<Afya> update(Afya afya);
       
   Future<void> delete(int id);
       
   Future<void> deleteAll();
}

class AfyaRemoteDataSource extends AfyaRemoteDataSourceBase {
    AfyaRemoteDataSource(super.http);
       
    @override
    Future<List<Afya>> getAll() async {
       // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<Afya> getById(int id) async {
       // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<Afya> create(Afya afya) async {
       // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<Afya> update(Afya afya) async {
        // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<void> delete(int id) async {
        // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<void> deleteAll() async {
        // TODO implements
       throw UnimplementedError();
    }
 

}