class SearchKeywordsEntity {
	List<String> keywords;
	int errorCode;
	bool ok;
	String message;

	SearchKeywordsEntity({this.keywords, this.errorCode, this.ok, this.message});

	SearchKeywordsEntity.fromJson(Map<String, dynamic> json) {
		keywords = json['keywords']?.cast<String>();
		errorCode = json['errorCode'];
		ok = json['ok'];
		message = json['message'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['keywords'] = this.keywords;
		data['errorCode'] = this.errorCode;
		data['ok'] = this.ok;
		data['message'] = this.message;
		return data;
	}
}
