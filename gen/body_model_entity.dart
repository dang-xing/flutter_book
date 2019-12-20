class BodyModelEntity {
	String msg;
	int code;
	BodyModelData data;
	dynamic url;

	BodyModelEntity({this.msg, this.code, this.data, this.url});

	BodyModelEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		code = json['code'];
		data = json['data'] != null ? new BodyModelData.fromJson(json['data']) : null;
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['url'] = this.url;
		return data;
	}
}

class BodyModelData {
	int totalSize;
	int pageIndex;
	int totalPageCount;
	int pageSize;
	List<BodyModelDataList> xList;

	BodyModelData({this.totalSize, this.pageIndex, this.totalPageCount, this.pageSize, this.xList});

	BodyModelData.fromJson(Map<String, dynamic> json) {
		totalSize = json['totalSize'];
		pageIndex = json['pageIndex'];
		totalPageCount = json['totalPageCount'];
		pageSize = json['pageSize'];
		if (json['list'] != null) {
			xList = new List<BodyModelDataList>();(json['list'] as List).forEach((v) { xList.add(new BodyModelDataList.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['totalSize'] = this.totalSize;
		data['pageIndex'] = this.pageIndex;
		data['totalPageCount'] = this.totalPageCount;
		data['pageSize'] = this.pageSize;
		if (this.xList != null) {
      data['list'] =  this.xList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class BodyModelDataList {
	int styleType;
	int displayStyle;
	List<BodyModelDataListRecommandbookinfovo> recommendBookInfoVo;
	String name;
	String id;

	BodyModelDataList({this.styleType, this.displayStyle, this.recommendBookInfoVo, this.name, this.id});

	BodyModelDataList.fromJson(Map<String, dynamic> json) {
		styleType = json['styleType'];
		displayStyle = json['displayStyle'];
		if (json['recommendBookInfoVo'] != null) {
			recommendBookInfoVo = new List<BodyModelDataListRecommandbookinfovo>();(json['recommendBookInfoVo'] as List).forEach((v) { recommendBookInfoVo.add(new BodyModelDataListRecommandbookinfovo.fromJson(v)); });
		}
		name = json['name'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['styleType'] = this.styleType;
		data['displayStyle'] = this.displayStyle;
		if (this.recommendBookInfoVo != null) {
      data['recommendBookInfoVo'] =  this.recommendBookInfoVo.map((v) => v.toJson()).toList();
    }
		data['name'] = this.name;
		data['id'] = this.id;
		return data;
	}
}

class BodyModelDataListRecommandbookinfovo {
	String bookImg;
	String bookStatus;
	int wordCount;
	String bookIntro;
	String authorName;
	String bookName;
	String categoryName;
	int bookId;

	BodyModelDataListRecommandbookinfovo({this.bookImg, this.bookStatus, this.wordCount, this.bookIntro, this.authorName, this.bookName, this.categoryName, this.bookId});

	BodyModelDataListRecommandbookinfovo.fromJson(Map<String, dynamic> json) {
		bookImg = json['bookImg'];
		bookStatus = json['bookStatus'];
		wordCount = json['wordCount'];
		bookIntro = json['bookIntro'];
		authorName = json['authorName'];
		bookName = json['bookName'];
		categoryName = json['categoryName'];
		bookId = json['bookId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bookImg'] = this.bookImg;
		data['bookStatus'] = this.bookStatus;
		data['wordCount'] = this.wordCount;
		data['bookIntro'] = this.bookIntro;
		data['authorName'] = this.authorName;
		data['bookName'] = this.bookName;
		data['categoryName'] = this.categoryName;
		data['bookId'] = this.bookId;
		return data;
	}
}
