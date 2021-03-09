import 'package:flutter_dio_package/model/user_model_entity.dart';

userModelEntityFromJson(UserModelEntity data, Map<String, dynamic> json) {
	if (json['page'] != null) {
		data.page = json['page'] is String
				? int.tryParse(json['page'])
				: json['page'].toInt();
	}
	if (json['per_page'] != null) {
		data.perPage = json['per_page'] is String
				? int.tryParse(json['per_page'])
				: json['per_page'].toInt();
	}
	if (json['total'] != null) {
		data.total = json['total'] is String
				? int.tryParse(json['total'])
				: json['total'].toInt();
	}
	if (json['total_pages'] != null) {
		data.totalPages = json['total_pages'] is String
				? int.tryParse(json['total_pages'])
				: json['total_pages'].toInt();
	}
	data.data = (json['data'] as List)?.map((v) => UserModelData().fromJson(v))?.toList();
	if (json['support'] != null) {
		data.support = new UserModelSupport().fromJson(json['support']);
	}
	return data;
}

Map<String, dynamic> userModelEntityToJson(UserModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['page'] = entity.page;
	data['per_page'] = entity.perPage;
	data['total'] = entity.total;
	data['total_pages'] = entity.totalPages;
	data['data'] =  entity.data?.map((v) => v.toJson())?.toList();
	data['support'] = entity.support?.toJson();
	return data;
}

userModelDataFromJson(UserModelData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['email'] != null) {
		data.email = json['email'].toString();
	}
	if (json['first_name'] != null) {
		data.firstName = json['first_name'].toString();
	}
	if (json['last_name'] != null) {
		data.lastName = json['last_name'].toString();
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar'].toString();
	}
	return data;
}

Map<String, dynamic> userModelDataToJson(UserModelData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['email'] = entity.email;
	data['first_name'] = entity.firstName;
	data['last_name'] = entity.lastName;
	data['avatar'] = entity.avatar;
	return data;
}

userModelSupportFromJson(UserModelSupport data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['text'] != null) {
		data.text = json['text'].toString();
	}
	return data;
}

Map<String, dynamic> userModelSupportToJson(UserModelSupport entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	data['text'] = entity.text;
	return data;
}