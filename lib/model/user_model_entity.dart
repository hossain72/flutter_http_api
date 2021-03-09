import 'package:flutter_dio_package/generated/json/base/json_convert_content.dart';
import 'package:flutter_dio_package/generated/json/base/json_field.dart';

class UserModelEntity with JsonConvert<UserModelEntity> {
	int page;
	@JSONField(name: "per_page")
	int perPage;
	int total;
	@JSONField(name: "total_pages")
	int totalPages;
	List<UserModelData> data;
	UserModelSupport support;
}

class UserModelData with JsonConvert<UserModelData> {
	int id;
	String email;
	@JSONField(name: "first_name")
	String firstName;
	@JSONField(name: "last_name")
	String lastName;
	String avatar;
}

class UserModelSupport with JsonConvert<UserModelSupport> {
	String url;
	String text;
}
