// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_dio_package/model/user_model_entity.dart';
import 'package:flutter_dio_package/generated/json/user_model_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {
			case UserModelEntity:
				return userModelEntityFromJson(data as UserModelEntity, json) as T;
			case UserModelData:
				return userModelDataFromJson(data as UserModelData, json) as T;
			case UserModelSupport:
				return userModelSupportFromJson(data as UserModelSupport, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {
			case UserModelEntity:
				return userModelEntityToJson(data as UserModelEntity);
			case UserModelData:
				return userModelDataToJson(data as UserModelData);
			case UserModelSupport:
				return userModelSupportToJson(data as UserModelSupport);
			}
			return data as T;
		}
  //Go back to a single instance by type
	static _fromJsonSingle<M>( json) {
		String type = M.toString();
		if(type == (UserModelEntity).toString()){
			return UserModelEntity().fromJson(json);
		}	else if(type == (UserModelData).toString()){
			return UserModelData().fromJson(json);
		}	else if(type == (UserModelSupport).toString()){
			return UserModelSupport().fromJson(json);
		}	
		return null;
	}

  //list is returned by type
	static M _getListChildType<M>(List data) {
		if(<UserModelEntity>[] is M){
			return data.map<UserModelEntity>((e) => UserModelEntity().fromJson(e)).toList() as M;
		}	else if(<UserModelData>[] is M){
			return data.map<UserModelData>((e) => UserModelData().fromJson(e)).toList() as M;
		}	else if(<UserModelSupport>[] is M){
			return data.map<UserModelSupport>((e) => UserModelSupport().fromJson(e)).toList() as M;
		}
		throw Exception("not fond");
	}

  static M fromJsonAsT<M>(json) {
    if (json is List) {
      return _getListChildType<M>(json);
    } else {
      return _fromJsonSingle<M>(json) as M;
    }
  }
}