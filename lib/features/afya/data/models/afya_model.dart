import 'package:afya_daktari_doctor/features/afya/domain/entities/afya.dart';

class AfyaModel extends Afya {
    AfyaModel({
       required id,
       required name,
    }) : super(id: id, name: name);
    
    factory AfyaModel.fromJson(Map<String, dynamic> json) {
       return AfyaModel(
           id: json['id'],
           name: json['name'],
       );
    }
    
    Map<String, dynamic> toJson() {
       return { 
           'id': id,
           'name': name,
       };
    }
}
