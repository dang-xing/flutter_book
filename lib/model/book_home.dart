class BookHomeEntity {
	BookHomeData data;
	int errorCode;
	bool ok;
	String message;

	BookHomeEntity({this.data, this.errorCode, this.ok, this.message});

	BookHomeEntity.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new BookHomeData.fromJson(json['data']) : null;
		errorCode = json['errorCode'];
		ok = json['ok'];
		message = json['message'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['errorCode'] = this.errorCode;
		data['ok'] = this.ok;
		data['message'] = this.message;
		return data;
	}
}

class BookHomeData {
	List<BookHomeDataModulesRecommand> modulesRecommend;
	List<BookHomeDataHomeRecommand> homeRecommend;
	List<BookHomeDataRankingList> rankingList;
	List<BookHomeDataHotCategory> hotCategory;
	int isVipPopupBook;
	List<BookHomeDataBannerList> bannerList;
	List<BookHomeDataEverybodyLook> everybodyLooks;
	List<BookHomeDataIcon> icon;
	List<BookHomeDataBookSingle> bookSingle;
	List<BookHomeDataBestLove> bestLove;
	String vipPopupBookUrl;
	BookHomeDataBounced bounced;

	BookHomeData({this.modulesRecommend, this.homeRecommend, this.rankingList, this.hotCategory, this.isVipPopupBook, this.bannerList, this.everybodyLooks, this.icon, this.bookSingle, this.bestLove, this.vipPopupBookUrl, this.bounced});

	BookHomeData.fromJson(Map<String, dynamic> json) {
		if (json['modules_recommend'] != null) {
			modulesRecommend = new List<BookHomeDataModulesRecommand>();(json['modules_recommend'] as List).forEach((v) { modulesRecommend.add(new BookHomeDataModulesRecommand.fromJson(v)); });
		}
		if (json['home_recommend'] != null) {
			homeRecommend = new List<BookHomeDataHomeRecommand>();(json['home_recommend'] as List).forEach((v) { homeRecommend.add(new BookHomeDataHomeRecommand.fromJson(v)); });
		}
		if (json['ranking_list'] != null) {
			rankingList = new List<BookHomeDataRankingList>();(json['ranking_list'] as List).forEach((v) { rankingList.add(new BookHomeDataRankingList.fromJson(v)); });
		}
		if (json['hot_category'] != null) {
			hotCategory = new List<BookHomeDataHotCategory>();(json['hot_category'] as List).forEach((v) { hotCategory.add(new BookHomeDataHotCategory.fromJson(v)); });
		}
		isVipPopupBook = json['is_vip_popup_book'];
		if (json['banner_list'] != null) {
			bannerList = new List<BookHomeDataBannerList>();(json['banner_list'] as List).forEach((v) { bannerList.add(new BookHomeDataBannerList.fromJson(v)); });
		}
		if (json['everybody_looks'] != null) {
			everybodyLooks = new List<BookHomeDataEverybodyLook>();(json['everybody_looks'] as List).forEach((v) { everybodyLooks.add(new BookHomeDataEverybodyLook.fromJson(v)); });
		}
		if (json['icon'] != null) {
			icon = new List<BookHomeDataIcon>();(json['icon'] as List).forEach((v) { icon.add(new BookHomeDataIcon.fromJson(v)); });
		}
		if (json['book_single'] != null) {
			bookSingle = new List<BookHomeDataBookSingle>();(json['book_single'] as List).forEach((v) { bookSingle.add(new BookHomeDataBookSingle.fromJson(v)); });
		}
		if (json['best_love'] != null) {
			bestLove = new List<BookHomeDataBestLove>();(json['best_love'] as List).forEach((v) { bestLove.add(new BookHomeDataBestLove.fromJson(v)); });
		}
		vipPopupBookUrl = json['vip_popup_book_url'];
		bounced = json['bounced'] != null ? new BookHomeDataBounced.fromJson(json['bounced']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.modulesRecommend != null) {
      data['modules_recommend'] =  this.modulesRecommend.map((v) => v.toJson()).toList();
    }
		if (this.homeRecommend != null) {
      data['home_recommend'] =  this.homeRecommend.map((v) => v.toJson()).toList();
    }
		if (this.rankingList != null) {
      data['ranking_list'] =  this.rankingList.map((v) => v.toJson()).toList();
    }
		if (this.hotCategory != null) {
      data['hot_category'] =  this.hotCategory.map((v) => v.toJson()).toList();
    }
		data['is_vip_popup_book'] = this.isVipPopupBook;
		if (this.bannerList != null) {
      data['banner_list'] =  this.bannerList.map((v) => v.toJson()).toList();
    }
		if (this.everybodyLooks != null) {
      data['everybody_looks'] =  this.everybodyLooks.map((v) => v.toJson()).toList();
    }
		if (this.icon != null) {
      data['icon'] =  this.icon.map((v) => v.toJson()).toList();
    }
		if (this.bookSingle != null) {
      data['book_single'] =  this.bookSingle.map((v) => v.toJson()).toList();
    }
		if (this.bestLove != null) {
      data['best_love'] =  this.bestLove.map((v) => v.toJson()).toList();
    }
		data['vip_popup_book_url'] = this.vipPopupBookUrl;
		if (this.bounced != null) {
      data['bounced'] = this.bounced.toJson();
    }
		return data;
	}
}

class BookHomeDataModulesRecommand {
	String channelIds;
	String gender;
	String modulesType;
	List<BookHomeDataModulesRecommandBookConfig> bookConfig;
	String versionIds;
	String name;
	String homeStatus;
	String id;
	String homeSort;

	BookHomeDataModulesRecommand({this.channelIds, this.gender, this.modulesType, this.bookConfig, this.versionIds, this.name, this.homeStatus, this.id, this.homeSort});

	BookHomeDataModulesRecommand.fromJson(Map<String, dynamic> json) {
		channelIds = json['channel_ids'];
		gender = json['gender'];
		modulesType = json['modules_type'];
		if (json['book_config'] != null) {
			bookConfig = new List<BookHomeDataModulesRecommandBookConfig>();(json['book_config'] as List).forEach((v) { bookConfig.add(new BookHomeDataModulesRecommandBookConfig.fromJson(v)); });
		}
		versionIds = json['version_ids'];
		name = json['name'];
		homeStatus = json['home_status'];
		id = json['id'];
		homeSort = json['home_sort'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['channel_ids'] = this.channelIds;
		data['gender'] = this.gender;
		data['modules_type'] = this.modulesType;
		if (this.bookConfig != null) {
      data['book_config'] =  this.bookConfig.map((v) => v.toJson()).toList();
    }
		data['version_ids'] = this.versionIds;
		data['name'] = this.name;
		data['home_status'] = this.homeStatus;
		data['id'] = this.id;
		data['home_sort'] = this.homeSort;
		return data;
	}
}

class BookHomeDataModulesRecommandBookConfig {
	String weixinUrl;
	String channelIds;
	String cateGender;
	String isShare;
	String imageUrl;
	String versionIds;
	String homeConfigSort;
	String homeConfigStatus;
	String weixinId;
	String relationId;
	String linkType;
	String weixinIsPhone;
	String modulesType;
	String homeBookId;
	String name;
	String activityId;
	List<BookHomeDataModulesRecommandBookConfigBookList> bookList;
	String linkUrl;
	String id;
	String category;
	String cronType;

	BookHomeDataModulesRecommandBookConfig({this.weixinUrl, this.channelIds, this.cateGender, this.isShare, this.imageUrl, this.versionIds, this.homeConfigSort, this.homeConfigStatus, this.weixinId, this.relationId, this.linkType, this.weixinIsPhone, this.modulesType, this.homeBookId, this.name, this.activityId, this.bookList, this.linkUrl, this.id, this.category, this.cronType});

	BookHomeDataModulesRecommandBookConfig.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		cateGender = json['cate_gender'];
		isShare = json['is_share'];
		imageUrl = json['image_url'];
		versionIds = json['version_ids'];
		homeConfigSort = json['home_config_sort'];
		homeConfigStatus = json['home_config_status'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		modulesType = json['modules_type'];
		homeBookId = json['home_book_id'];
		name = json['name'];
		activityId = json['activity_id'];
		if (json['book_list'] != null) {
			bookList = new List<BookHomeDataModulesRecommandBookConfigBookList>();(json['book_list'] as List).forEach((v) { bookList.add(new BookHomeDataModulesRecommandBookConfigBookList.fromJson(v)); });
		}
		linkUrl = json['link_url'];
		id = json['id'];
		category = json['category'];
		cronType = json['cron_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['cate_gender'] = this.cateGender;
		data['is_share'] = this.isShare;
		data['image_url'] = this.imageUrl;
		data['version_ids'] = this.versionIds;
		data['home_config_sort'] = this.homeConfigSort;
		data['home_config_status'] = this.homeConfigStatus;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['modules_type'] = this.modulesType;
		data['home_book_id'] = this.homeBookId;
		data['name'] = this.name;
		data['activity_id'] = this.activityId;
		if (this.bookList != null) {
      data['book_list'] =  this.bookList.map((v) => v.toJson()).toList();
    }
		data['link_url'] = this.linkUrl;
		data['id'] = this.id;
		data['category'] = this.category;
		data['cron_type'] = this.cronType;
		return data;
	}
}

class BookHomeDataModulesRecommandBookConfigBookList {
	String wordcount;
	String author;
	String chaptersCount;
	String latelyFollower;
	String title;
	String lastChapter;
	String shortIntro;
	String cover;
	String isSerial;
	BookHomeDataModulesRecommendBookConfigBookListCat cat;
	String minorCate;
	String longIntro;
	String sId;
	String sourceName;
	String sourceId;
	String category;
	String updated;

	BookHomeDataModulesRecommandBookConfigBookList({this.wordcount, this.author, this.chaptersCount, this.latelyFollower, this.title, this.lastChapter, this.shortIntro, this.cover, this.isSerial, this.cat, this.minorCate, this.longIntro, this.sId, this.sourceName, this.sourceId, this.category, this.updated});

	BookHomeDataModulesRecommandBookConfigBookList.fromJson(Map<String, dynamic> json) {
		wordcount = json['wordcount'];
		author = json['author'];
		chaptersCount = json['chaptersCount'];
		latelyFollower = json['latelyFollower'];
		title = json['title'];
		lastChapter = json['lastChapter'];
		shortIntro = json['shortIntro'];
		cover = json['cover'];
		isSerial = json['isSerial'];
		cat = json['cat'] != null ? new BookHomeDataModulesRecommendBookConfigBookListCat.fromJson(json['cat']) : null;
		minorCate = json['minorCate'];
		longIntro = json['longIntro'];
		sId = json['_id'];
		sourceName = json['sourceName'];
		sourceId = json['source_id'];
		category = json['category'];
		updated = json['updated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['wordcount'] = this.wordcount;
		data['author'] = this.author;
		data['chaptersCount'] = this.chaptersCount;
		data['latelyFollower'] = this.latelyFollower;
		data['title'] = this.title;
		data['lastChapter'] = this.lastChapter;
		data['shortIntro'] = this.shortIntro;
		data['cover'] = this.cover;
		data['isSerial'] = this.isSerial;
		if (this.cat != null) {
      data['cat'] = this.cat.toJson();
    }
		data['minorCate'] = this.minorCate;
		data['longIntro'] = this.longIntro;
		data['_id'] = this.sId;
		data['sourceName'] = this.sourceName;
		data['source_id'] = this.sourceId;
		data['category'] = this.category;
		data['updated'] = this.updated;
		return data;
	}
}

class BookHomeDataModulesRecommendBookConfigBookListCat {
	String name;
	String id;

	BookHomeDataModulesRecommendBookConfigBookListCat({this.name, this.id});

	BookHomeDataModulesRecommendBookConfigBookListCat.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['id'] = this.id;
		return data;
	}
}

class BookHomeDataHomeRecommand {
	String channelIds;
	String gender;
	String modulesType;
	List<BookHomeDataHomeRecommandBookConfig> bookConfig;
	String versionIds;
	String name;
	String homeStatus;
	String id;
	String homeSort;

	BookHomeDataHomeRecommand({this.channelIds, this.gender, this.modulesType, this.bookConfig, this.versionIds, this.name, this.homeStatus, this.id, this.homeSort});

	BookHomeDataHomeRecommand.fromJson(Map<String, dynamic> json) {
		channelIds = json['channel_ids'];
		gender = json['gender'];
		modulesType = json['modules_type'];
		if (json['book_config'] != null) {
			bookConfig = new List<BookHomeDataHomeRecommandBookConfig>();(json['book_config'] as List).forEach((v) { bookConfig.add(new BookHomeDataHomeRecommandBookConfig.fromJson(v)); });
		}
		versionIds = json['version_ids'];
		name = json['name'];
		homeStatus = json['home_status'];
		id = json['id'];
		homeSort = json['home_sort'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['channel_ids'] = this.channelIds;
		data['gender'] = this.gender;
		data['modules_type'] = this.modulesType;
		if (this.bookConfig != null) {
      data['book_config'] =  this.bookConfig.map((v) => v.toJson()).toList();
    }
		data['version_ids'] = this.versionIds;
		data['name'] = this.name;
		data['home_status'] = this.homeStatus;
		data['id'] = this.id;
		data['home_sort'] = this.homeSort;
		return data;
	}
}

class BookHomeDataHomeRecommandBookConfig {
	String weixinUrl;
	String channelIds;
	String cateGender;
	String isShare;
	String imageUrl;
	String versionIds;
	String homeConfigSort;
	String homeConfigStatus;
	String weixinId;
	String relationId;
	BookHomeDataHomeRecommendBookConfigBookInfo bookInfo;
	String linkType;
	String weixinIsPhone;
	String modulesType;
	String homeBookId;
	String name;
	String activityId;
	String linkUrl;
	String id;
	String category;
	String cronType;

	BookHomeDataHomeRecommandBookConfig({this.weixinUrl, this.channelIds, this.cateGender, this.isShare, this.imageUrl, this.versionIds, this.homeConfigSort, this.homeConfigStatus, this.weixinId, this.relationId, this.bookInfo, this.linkType, this.weixinIsPhone, this.modulesType, this.homeBookId, this.name, this.activityId, this.linkUrl, this.id, this.category, this.cronType});

	BookHomeDataHomeRecommandBookConfig.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		cateGender = json['cate_gender'];
		isShare = json['is_share'];
		imageUrl = json['image_url'];
		versionIds = json['version_ids'];
		homeConfigSort = json['home_config_sort'];
		homeConfigStatus = json['home_config_status'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		bookInfo = json['book_info'] != null ? new BookHomeDataHomeRecommendBookConfigBookInfo.fromJson(json['book_info']) : null;
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		modulesType = json['modules_type'];
		homeBookId = json['home_book_id'];
		name = json['name'];
		activityId = json['activity_id'];
		linkUrl = json['link_url'];
		id = json['id'];
		category = json['category'];
		cronType = json['cron_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['cate_gender'] = this.cateGender;
		data['is_share'] = this.isShare;
		data['image_url'] = this.imageUrl;
		data['version_ids'] = this.versionIds;
		data['home_config_sort'] = this.homeConfigSort;
		data['home_config_status'] = this.homeConfigStatus;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		if (this.bookInfo != null) {
      data['book_info'] = this.bookInfo.toJson();
    }
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['modules_type'] = this.modulesType;
		data['home_book_id'] = this.homeBookId;
		data['name'] = this.name;
		data['activity_id'] = this.activityId;
		data['link_url'] = this.linkUrl;
		data['id'] = this.id;
		data['category'] = this.category;
		data['cron_type'] = this.cronType;
		return data;
	}
}

class BookHomeDataHomeRecommendBookConfigBookInfo {
	String sNo;
	String wordcount;
	String author;
	String chaptersCount;
	String latelyFollower;
	String title;
	String lastChapter;
	String shortIntro;
	String cover;
	String isSerial;
	String sourceUrl;
	String sourceType;
	BookHomeDataHomeRecommendBookConfigBookInfoCat cat;
	String minorCate;
	String lastChapterId;
	String longIntro;
	String sId;
	String sourceName;
	String sourceId;
	String category;
	String updated;

	BookHomeDataHomeRecommendBookConfigBookInfo({this.sNo, this.wordcount, this.author, this.chaptersCount, this.latelyFollower, this.title, this.lastChapter, this.shortIntro, this.cover, this.isSerial, this.sourceUrl, this.sourceType, this.cat, this.minorCate, this.lastChapterId, this.longIntro, this.sId, this.sourceName, this.sourceId, this.category, this.updated});

	BookHomeDataHomeRecommendBookConfigBookInfo.fromJson(Map<String, dynamic> json) {
		sNo = json['_no'];
		wordcount = json['wordcount'];
		author = json['author'];
		chaptersCount = json['chaptersCount'];
		latelyFollower = json['latelyFollower'];
		title = json['title'];
		lastChapter = json['lastChapter'];
		shortIntro = json['shortIntro'];
		cover = json['cover'];
		isSerial = json['isSerial'];
		sourceUrl = json['sourceUrl'];
		sourceType = json['sourceType'];
		cat = json['cat'] != null ? new BookHomeDataHomeRecommendBookConfigBookInfoCat.fromJson(json['cat']) : null;
		minorCate = json['minorCate'];
		lastChapterId = json['lastChapterId'];
		longIntro = json['longIntro'];
		sId = json['_id'];
		sourceName = json['sourceName'];
		sourceId = json['source_id'];
		category = json['category'];
		updated = json['updated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['_no'] = this.sNo;
		data['wordcount'] = this.wordcount;
		data['author'] = this.author;
		data['chaptersCount'] = this.chaptersCount;
		data['latelyFollower'] = this.latelyFollower;
		data['title'] = this.title;
		data['lastChapter'] = this.lastChapter;
		data['shortIntro'] = this.shortIntro;
		data['cover'] = this.cover;
		data['isSerial'] = this.isSerial;
		data['sourceUrl'] = this.sourceUrl;
		data['sourceType'] = this.sourceType;
		if (this.cat != null) {
      data['cat'] = this.cat.toJson();
    }
		data['minorCate'] = this.minorCate;
		data['lastChapterId'] = this.lastChapterId;
		data['longIntro'] = this.longIntro;
		data['_id'] = this.sId;
		data['sourceName'] = this.sourceName;
		data['source_id'] = this.sourceId;
		data['category'] = this.category;
		data['updated'] = this.updated;
		return data;
	}
}

class BookHomeDataHomeRecommendBookConfigBookInfoCat {
	String name;
	String sId;

	BookHomeDataHomeRecommendBookConfigBookInfoCat({this.name, this.sId});

	BookHomeDataHomeRecommendBookConfigBookInfoCat.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		sId = json['_id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['_id'] = this.sId;
		return data;
	}
}

class BookHomeDataRankingList {
	String channelIds;
	String gender;
	String modulesType;
	List<BookHomeDataRankingListBookConfig> bookConfig;
	String versionIds;
	String name;
	String homeStatus;
	String id;
	String homeSort;

	BookHomeDataRankingList({this.channelIds, this.gender, this.modulesType, this.bookConfig, this.versionIds, this.name, this.homeStatus, this.id, this.homeSort});

	BookHomeDataRankingList.fromJson(Map<String, dynamic> json) {
		channelIds = json['channel_ids'];
		gender = json['gender'];
		modulesType = json['modules_type'];
		if (json['book_config'] != null) {
			bookConfig = new List<BookHomeDataRankingListBookConfig>();(json['book_config'] as List).forEach((v) { bookConfig.add(new BookHomeDataRankingListBookConfig.fromJson(v)); });
		}
		versionIds = json['version_ids'];
		name = json['name'];
		homeStatus = json['home_status'];
		id = json['id'];
		homeSort = json['home_sort'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['channel_ids'] = this.channelIds;
		data['gender'] = this.gender;
		data['modules_type'] = this.modulesType;
		if (this.bookConfig != null) {
      data['book_config'] =  this.bookConfig.map((v) => v.toJson()).toList();
    }
		data['version_ids'] = this.versionIds;
		data['name'] = this.name;
		data['home_status'] = this.homeStatus;
		data['id'] = this.id;
		data['home_sort'] = this.homeSort;
		return data;
	}
}

class BookHomeDataRankingListBookConfig {
	String weixinUrl;
	String channelIds;
	String cateGender;
	String isShare;
	String imageUrl;
	String versionIds;
	String homeConfigSort;
	String homeConfigStatus;
	String weixinId;
	String relationId;
	String linkType;
	String weixinIsPhone;
	String modulesType;
	String homeBookId;
	String name;
	String activityId;
	List<BookHomeDataRankingListBookConfigBookList> bookList;
	String linkUrl;
	String id;
	String category;
	String cronType;

	BookHomeDataRankingListBookConfig({this.weixinUrl, this.channelIds, this.cateGender, this.isShare, this.imageUrl, this.versionIds, this.homeConfigSort, this.homeConfigStatus, this.weixinId, this.relationId, this.linkType, this.weixinIsPhone, this.modulesType, this.homeBookId, this.name, this.activityId, this.bookList, this.linkUrl, this.id, this.category, this.cronType});

	BookHomeDataRankingListBookConfig.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		cateGender = json['cate_gender'];
		isShare = json['is_share'];
		imageUrl = json['image_url'];
		versionIds = json['version_ids'];
		homeConfigSort = json['home_config_sort'];
		homeConfigStatus = json['home_config_status'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		modulesType = json['modules_type'];
		homeBookId = json['home_book_id'];
		name = json['name'];
		activityId = json['activity_id'];
		if (json['book_list'] != null) {
			bookList = new List<BookHomeDataRankingListBookConfigBookList>();(json['book_list'] as List).forEach((v) { bookList.add(new BookHomeDataRankingListBookConfigBookList.fromJson(v)); });
		}
		linkUrl = json['link_url'];
		id = json['id'];
		category = json['category'];
		cronType = json['cron_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['cate_gender'] = this.cateGender;
		data['is_share'] = this.isShare;
		data['image_url'] = this.imageUrl;
		data['version_ids'] = this.versionIds;
		data['home_config_sort'] = this.homeConfigSort;
		data['home_config_status'] = this.homeConfigStatus;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['modules_type'] = this.modulesType;
		data['home_book_id'] = this.homeBookId;
		data['name'] = this.name;
		data['activity_id'] = this.activityId;
		if (this.bookList != null) {
      data['book_list'] =  this.bookList.map((v) => v.toJson()).toList();
    }
		data['link_url'] = this.linkUrl;
		data['id'] = this.id;
		data['category'] = this.category;
		data['cron_type'] = this.cronType;
		return data;
	}
}

class BookHomeDataRankingListBookConfigBookList {
	String wordcount;
	String author;
	String chaptersCount;
	String latelyFollower;
	String title;
	String lastChapter;
	String shortIntro;
	String cover;
	String isSerial;
	BookHomeDataRankingListBookConfigBookListCat cat;
	String minorCate;
	String longIntro;
	String sId;
	String sourceName;
	String sourceId;
	String category;
	String updated;

	BookHomeDataRankingListBookConfigBookList({this.wordcount, this.author, this.chaptersCount, this.latelyFollower, this.title, this.lastChapter, this.shortIntro, this.cover, this.isSerial, this.cat, this.minorCate, this.longIntro, this.sId, this.sourceName, this.sourceId, this.category, this.updated});

	BookHomeDataRankingListBookConfigBookList.fromJson(Map<String, dynamic> json) {
		wordcount = json['wordcount'];
		author = json['author'];
		chaptersCount = json['chaptersCount'];
		latelyFollower = json['latelyFollower'];
		title = json['title'];
		lastChapter = json['lastChapter'];
		shortIntro = json['shortIntro'];
		cover = json['cover'];
		isSerial = json['isSerial'];
		cat = json['cat'] != null ? new BookHomeDataRankingListBookConfigBookListCat.fromJson(json['cat']) : null;
		minorCate = json['minorCate'];
		longIntro = json['longIntro'];
		sId = json['_id'];
		sourceName = json['sourceName'];
		sourceId = json['source_id'];
		category = json['category'];
		updated = json['updated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['wordcount'] = this.wordcount;
		data['author'] = this.author;
		data['chaptersCount'] = this.chaptersCount;
		data['latelyFollower'] = this.latelyFollower;
		data['title'] = this.title;
		data['lastChapter'] = this.lastChapter;
		data['shortIntro'] = this.shortIntro;
		data['cover'] = this.cover;
		data['isSerial'] = this.isSerial;
		if (this.cat != null) {
      data['cat'] = this.cat.toJson();
    }
		data['minorCate'] = this.minorCate;
		data['longIntro'] = this.longIntro;
		data['_id'] = this.sId;
		data['sourceName'] = this.sourceName;
		data['source_id'] = this.sourceId;
		data['category'] = this.category;
		data['updated'] = this.updated;
		return data;
	}
}

class BookHomeDataRankingListBookConfigBookListCat {
	String name;
	String id;

	BookHomeDataRankingListBookConfigBookListCat({this.name, this.id});

	BookHomeDataRankingListBookConfigBookListCat.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['id'] = this.id;
		return data;
	}
}

class BookHomeDataHotCategory {
	String channelIds;
	String gender;
	String modulesType;
	List<BookHomeDataHotCategoryBookConfig> bookConfig;
	String versionIds;
	String name;
	String homeStatus;
	String id;
	String homeSort;

	BookHomeDataHotCategory({this.channelIds, this.gender, this.modulesType, this.bookConfig, this.versionIds, this.name, this.homeStatus, this.id, this.homeSort});

	BookHomeDataHotCategory.fromJson(Map<String, dynamic> json) {
		channelIds = json['channel_ids'];
		gender = json['gender'];
		modulesType = json['modules_type'];
		if (json['book_config'] != null) {
			bookConfig = new List<BookHomeDataHotCategoryBookConfig>();(json['book_config'] as List).forEach((v) { bookConfig.add(new BookHomeDataHotCategoryBookConfig.fromJson(v)); });
		}
		versionIds = json['version_ids'];
		name = json['name'];
		homeStatus = json['home_status'];
		id = json['id'];
		homeSort = json['home_sort'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['channel_ids'] = this.channelIds;
		data['gender'] = this.gender;
		data['modules_type'] = this.modulesType;
		if (this.bookConfig != null) {
      data['book_config'] =  this.bookConfig.map((v) => v.toJson()).toList();
    }
		data['version_ids'] = this.versionIds;
		data['name'] = this.name;
		data['home_status'] = this.homeStatus;
		data['id'] = this.id;
		data['home_sort'] = this.homeSort;
		return data;
	}
}

class BookHomeDataHotCategoryBookConfig {
	String weixinUrl;
	String channelIds;
	String cateGender;
	String isShare;
	String imageUrl;
	String versionIds;
	String homeConfigSort;
	String homeConfigStatus;
	String weixinId;
	String relationId;
	String linkType;
	String weixinIsPhone;
	String modulesType;
	String homeBookId;
	String name;
	String activityId;
	String linkUrl;
	String id;
	String category;
	String cronType;

	BookHomeDataHotCategoryBookConfig({this.weixinUrl, this.channelIds, this.cateGender, this.isShare, this.imageUrl, this.versionIds, this.homeConfigSort, this.homeConfigStatus, this.weixinId, this.relationId, this.linkType, this.weixinIsPhone, this.modulesType, this.homeBookId, this.name, this.activityId, this.linkUrl, this.id, this.category, this.cronType});

	BookHomeDataHotCategoryBookConfig.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		cateGender = json['cate_gender'];
		isShare = json['is_share'];
		imageUrl = json['image_url'];
		versionIds = json['version_ids'];
		homeConfigSort = json['home_config_sort'];
		homeConfigStatus = json['home_config_status'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		modulesType = json['modules_type'];
		homeBookId = json['home_book_id'];
		name = json['name'];
		activityId = json['activity_id'];
		linkUrl = json['link_url'];
		id = json['id'];
		category = json['category'];
		cronType = json['cron_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['cate_gender'] = this.cateGender;
		data['is_share'] = this.isShare;
		data['image_url'] = this.imageUrl;
		data['version_ids'] = this.versionIds;
		data['home_config_sort'] = this.homeConfigSort;
		data['home_config_status'] = this.homeConfigStatus;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['modules_type'] = this.modulesType;
		data['home_book_id'] = this.homeBookId;
		data['name'] = this.name;
		data['activity_id'] = this.activityId;
		data['link_url'] = this.linkUrl;
		data['id'] = this.id;
		data['category'] = this.category;
		data['cron_type'] = this.cronType;
		return data;
	}
}

class BookHomeDataBannerList {
	String channelIds;
	String gender;
	String modulesType;
	List<BookHomeDataBannerListBookConfig> bookConfig;
	String versionIds;
	String name;
	String homeStatus;
	String id;
	String homeSort;

	BookHomeDataBannerList({this.channelIds, this.gender, this.modulesType, this.bookConfig, this.versionIds, this.name, this.homeStatus, this.id, this.homeSort});

	BookHomeDataBannerList.fromJson(Map<String, dynamic> json) {
		channelIds = json['channel_ids'];
		gender = json['gender'];
		modulesType = json['modules_type'];
		if (json['book_config'] != null) {
			bookConfig = new List<BookHomeDataBannerListBookConfig>();(json['book_config'] as List).forEach((v) { bookConfig.add(new BookHomeDataBannerListBookConfig.fromJson(v)); });
		}
		versionIds = json['version_ids'];
		name = json['name'];
		homeStatus = json['home_status'];
		id = json['id'];
		homeSort = json['home_sort'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['channel_ids'] = this.channelIds;
		data['gender'] = this.gender;
		data['modules_type'] = this.modulesType;
		if (this.bookConfig != null) {
      data['book_config'] =  this.bookConfig.map((v) => v.toJson()).toList();
    }
		data['version_ids'] = this.versionIds;
		data['name'] = this.name;
		data['home_status'] = this.homeStatus;
		data['id'] = this.id;
		data['home_sort'] = this.homeSort;
		return data;
	}
}

class BookHomeDataBannerListBookConfig {
	String weixinUrl;
	String channelIds;
	String cateGender;
	String isShare;
	String imageUrl;
	String versionIds;
	String homeConfigSort;
	String homeConfigStatus;
	String weixinId;
	String relationId;
	BookHomeDataBannerListBookConfigBookInfo bookInfo;
	String linkType;
	String weixinIsPhone;
	String modulesType;
	String homeBookId;
	String name;
	String activityId;
	String linkUrl;
	String id;
	String category;
	String cronType;

	BookHomeDataBannerListBookConfig({this.weixinUrl, this.channelIds, this.cateGender, this.isShare, this.imageUrl, this.versionIds, this.homeConfigSort, this.homeConfigStatus, this.weixinId, this.relationId, this.bookInfo, this.linkType, this.weixinIsPhone, this.modulesType, this.homeBookId, this.name, this.activityId, this.linkUrl, this.id, this.category, this.cronType});

	BookHomeDataBannerListBookConfig.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		cateGender = json['cate_gender'];
		isShare = json['is_share'];
		imageUrl = json['image_url'];
		versionIds = json['version_ids'];
		homeConfigSort = json['home_config_sort'];
		homeConfigStatus = json['home_config_status'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		bookInfo = json['book_info'] != null ? new BookHomeDataBannerListBookConfigBookInfo.fromJson(json['book_info']) : null;
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		modulesType = json['modules_type'];
		homeBookId = json['home_book_id'];
		name = json['name'];
		activityId = json['activity_id'];
		linkUrl = json['link_url'];
		id = json['id'];
		category = json['category'];
		cronType = json['cron_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['cate_gender'] = this.cateGender;
		data['is_share'] = this.isShare;
		data['image_url'] = this.imageUrl;
		data['version_ids'] = this.versionIds;
		data['home_config_sort'] = this.homeConfigSort;
		data['home_config_status'] = this.homeConfigStatus;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		if (this.bookInfo != null) {
      data['book_info'] = this.bookInfo.toJson();
    }
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['modules_type'] = this.modulesType;
		data['home_book_id'] = this.homeBookId;
		data['name'] = this.name;
		data['activity_id'] = this.activityId;
		data['link_url'] = this.linkUrl;
		data['id'] = this.id;
		data['category'] = this.category;
		data['cron_type'] = this.cronType;
		return data;
	}
}

class BookHomeDataBannerListBookConfigBookInfo {
	String sNo;
	String wordcount;
	String author;
	String chaptersCount;
	String latelyFollower;
	String title;
	String lastChapter;
	String shortIntro;
	String cover;
	String isSerial;
	String sourceUrl;
	String sourceType;
	BookHomeDataBannerListBookConfigBookInfoCat cat;
	String minorCate;
	String lastChapterId;
	String longIntro;
	String sId;
	String sourceName;
	String sourceId;
	String category;
	String updated;

	BookHomeDataBannerListBookConfigBookInfo({this.sNo, this.wordcount, this.author, this.chaptersCount, this.latelyFollower, this.title, this.lastChapter, this.shortIntro, this.cover, this.isSerial, this.sourceUrl, this.sourceType, this.cat, this.minorCate, this.lastChapterId, this.longIntro, this.sId, this.sourceName, this.sourceId, this.category, this.updated});

	BookHomeDataBannerListBookConfigBookInfo.fromJson(Map<String, dynamic> json) {
		sNo = json['_no'];
		wordcount = json['wordcount'];
		author = json['author'];
		chaptersCount = json['chaptersCount'];
		latelyFollower = json['latelyFollower'];
		title = json['title'];
		lastChapter = json['lastChapter'];
		shortIntro = json['shortIntro'];
		cover = json['cover'];
		isSerial = json['isSerial'];
		sourceUrl = json['sourceUrl'];
		sourceType = json['sourceType'];
		cat = json['cat'] != null ? new BookHomeDataBannerListBookConfigBookInfoCat.fromJson(json['cat']) : null;
		minorCate = json['minorCate'];
		lastChapterId = json['lastChapterId'];
		longIntro = json['longIntro'];
		sId = json['_id'];
		sourceName = json['sourceName'];
		sourceId = json['source_id'];
		category = json['category'];
		updated = json['updated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['_no'] = this.sNo;
		data['wordcount'] = this.wordcount;
		data['author'] = this.author;
		data['chaptersCount'] = this.chaptersCount;
		data['latelyFollower'] = this.latelyFollower;
		data['title'] = this.title;
		data['lastChapter'] = this.lastChapter;
		data['shortIntro'] = this.shortIntro;
		data['cover'] = this.cover;
		data['isSerial'] = this.isSerial;
		data['sourceUrl'] = this.sourceUrl;
		data['sourceType'] = this.sourceType;
		if (this.cat != null) {
      data['cat'] = this.cat.toJson();
    }
		data['minorCate'] = this.minorCate;
		data['lastChapterId'] = this.lastChapterId;
		data['longIntro'] = this.longIntro;
		data['_id'] = this.sId;
		data['sourceName'] = this.sourceName;
		data['source_id'] = this.sourceId;
		data['category'] = this.category;
		data['updated'] = this.updated;
		return data;
	}
}

class BookHomeDataBannerListBookConfigBookInfoCat {
	String name;
	String sId;

	BookHomeDataBannerListBookConfigBookInfoCat({this.name, this.sId});

	BookHomeDataBannerListBookConfigBookInfoCat.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		sId = json['_id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['_id'] = this.sId;
		return data;
	}
}

class BookHomeDataEverybodyLook {
	String sNo;
	String wordcount;
	String author;
	String chaptersCount;
	String latelyFollower;
	String title;
	String lastChapter;
	String shortIntro;
	String cover;
	String isSerial;
	String sourceUrl;
	String sourceType;
	BookHomeDataEverybodyLooksCat cat;
	String minorCate;
	String lastChapterId;
	String longIntro;
	String sId;
	String sourceName;
	String sourceId;
	String updated;

	BookHomeDataEverybodyLook({this.sNo, this.wordcount, this.author, this.chaptersCount, this.latelyFollower, this.title, this.lastChapter, this.shortIntro, this.cover, this.isSerial, this.sourceUrl, this.sourceType, this.cat, this.minorCate, this.lastChapterId, this.longIntro, this.sId, this.sourceName, this.sourceId, this.updated});

	BookHomeDataEverybodyLook.fromJson(Map<String, dynamic> json) {
		sNo = json['_no'];
		wordcount = json['wordcount'];
		author = json['author'];
		chaptersCount = json['chaptersCount'];
		latelyFollower = json['latelyFollower'];
		title = json['title'];
		lastChapter = json['lastChapter'];
		shortIntro = json['shortIntro'];
		cover = json['cover'];
		isSerial = json['isSerial'];
		sourceUrl = json['sourceUrl'];
		sourceType = json['sourceType'];
		cat = json['cat'] != null ? new BookHomeDataEverybodyLooksCat.fromJson(json['cat']) : null;
		minorCate = json['minorCate'];
		lastChapterId = json['lastChapterId'];
		longIntro = json['longIntro'];
		sId = json['_id'];
		sourceName = json['sourceName'];
		sourceId = json['source_id'];
		updated = json['updated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['_no'] = this.sNo;
		data['wordcount'] = this.wordcount;
		data['author'] = this.author;
		data['chaptersCount'] = this.chaptersCount;
		data['latelyFollower'] = this.latelyFollower;
		data['title'] = this.title;
		data['lastChapter'] = this.lastChapter;
		data['shortIntro'] = this.shortIntro;
		data['cover'] = this.cover;
		data['isSerial'] = this.isSerial;
		data['sourceUrl'] = this.sourceUrl;
		data['sourceType'] = this.sourceType;
		if (this.cat != null) {
      data['cat'] = this.cat.toJson();
    }
		data['minorCate'] = this.minorCate;
		data['lastChapterId'] = this.lastChapterId;
		data['longIntro'] = this.longIntro;
		data['_id'] = this.sId;
		data['sourceName'] = this.sourceName;
		data['source_id'] = this.sourceId;
		data['updated'] = this.updated;
		return data;
	}
}

class BookHomeDataEverybodyLooksCat {
	String name;
	String sId;

	BookHomeDataEverybodyLooksCat({this.name, this.sId});

	BookHomeDataEverybodyLooksCat.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		sId = json['_id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['_id'] = this.sId;
		return data;
	}
}

class BookHomeDataIcon {
	String channelIds;
	String gender;
	String modulesType;
	List<BookHomeDataIconBookConfig> bookConfig;
	String versionIds;
	String name;
	String homeStatus;
	String id;
	String homeSort;

	BookHomeDataIcon({this.channelIds, this.gender, this.modulesType, this.bookConfig, this.versionIds, this.name, this.homeStatus, this.id, this.homeSort});

	BookHomeDataIcon.fromJson(Map<String, dynamic> json) {
		channelIds = json['channel_ids'];
		gender = json['gender'];
		modulesType = json['modules_type'];
		if (json['book_config'] != null) {
			bookConfig = new List<BookHomeDataIconBookConfig>();(json['book_config'] as List).forEach((v) { bookConfig.add(new BookHomeDataIconBookConfig.fromJson(v)); });
		}
		versionIds = json['version_ids'];
		name = json['name'];
		homeStatus = json['home_status'];
		id = json['id'];
		homeSort = json['home_sort'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['channel_ids'] = this.channelIds;
		data['gender'] = this.gender;
		data['modules_type'] = this.modulesType;
		if (this.bookConfig != null) {
      data['book_config'] =  this.bookConfig.map((v) => v.toJson()).toList();
    }
		data['version_ids'] = this.versionIds;
		data['name'] = this.name;
		data['home_status'] = this.homeStatus;
		data['id'] = this.id;
		data['home_sort'] = this.homeSort;
		return data;
	}
}

class BookHomeDataIconBookConfig {
	String weixinUrl;
	String channelIds;
	String cateGender;
	String isShare;
	String imageUrl;
	String versionIds;
	String homeConfigSort;
	String homeConfigStatus;
	String weixinId;
	String relationId;
	String linkType;
	String weixinIsPhone;
	String modulesType;
	String homeBookId;
	String name;
	String activityId;
	String linkUrl;
	String id;
	String category;
	String cronType;

	BookHomeDataIconBookConfig({this.weixinUrl, this.channelIds, this.cateGender, this.isShare, this.imageUrl, this.versionIds, this.homeConfigSort, this.homeConfigStatus, this.weixinId, this.relationId, this.linkType, this.weixinIsPhone, this.modulesType, this.homeBookId, this.name, this.activityId, this.linkUrl, this.id, this.category, this.cronType});

	BookHomeDataIconBookConfig.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		cateGender = json['cate_gender'];
		isShare = json['is_share'];
		imageUrl = json['image_url'];
		versionIds = json['version_ids'];
		homeConfigSort = json['home_config_sort'];
		homeConfigStatus = json['home_config_status'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		modulesType = json['modules_type'];
		homeBookId = json['home_book_id'];
		name = json['name'];
		activityId = json['activity_id'];
		linkUrl = json['link_url'];
		id = json['id'];
		category = json['category'];
		cronType = json['cron_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['cate_gender'] = this.cateGender;
		data['is_share'] = this.isShare;
		data['image_url'] = this.imageUrl;
		data['version_ids'] = this.versionIds;
		data['home_config_sort'] = this.homeConfigSort;
		data['home_config_status'] = this.homeConfigStatus;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['modules_type'] = this.modulesType;
		data['home_book_id'] = this.homeBookId;
		data['name'] = this.name;
		data['activity_id'] = this.activityId;
		data['link_url'] = this.linkUrl;
		data['id'] = this.id;
		data['category'] = this.category;
		data['cron_type'] = this.cronType;
		return data;
	}
}

class BookHomeDataBookSingle {
	String channelIds;
	String gender;
	String modulesType;
	List<BookHomeDataBookSingleBookConfig> bookConfig;
	String versionIds;
	String name;
	String homeStatus;
	String id;
	String homeSort;

	BookHomeDataBookSingle({this.channelIds, this.gender, this.modulesType, this.bookConfig, this.versionIds, this.name, this.homeStatus, this.id, this.homeSort});

	BookHomeDataBookSingle.fromJson(Map<String, dynamic> json) {
		channelIds = json['channel_ids'];
		gender = json['gender'];
		modulesType = json['modules_type'];
		if (json['book_config'] != null) {
			bookConfig = new List<BookHomeDataBookSingleBookConfig>();(json['book_config'] as List).forEach((v) { bookConfig.add(new BookHomeDataBookSingleBookConfig.fromJson(v)); });
		}
		versionIds = json['version_ids'];
		name = json['name'];
		homeStatus = json['home_status'];
		id = json['id'];
		homeSort = json['home_sort'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['channel_ids'] = this.channelIds;
		data['gender'] = this.gender;
		data['modules_type'] = this.modulesType;
		if (this.bookConfig != null) {
      data['book_config'] =  this.bookConfig.map((v) => v.toJson()).toList();
    }
		data['version_ids'] = this.versionIds;
		data['name'] = this.name;
		data['home_status'] = this.homeStatus;
		data['id'] = this.id;
		data['home_sort'] = this.homeSort;
		return data;
	}
}

class BookHomeDataBookSingleBookConfig {
	String weixinUrl;
	String channelIds;
	String cateGender;
	String isShare;
	String imageUrl;
	String versionIds;
	String homeConfigSort;
	String homeConfigStatus;
	String weixinId;
	String relationId;
	BookHomeDataBookSingleBookConfigBookInfo bookInfo;
	String linkType;
	String weixinIsPhone;
	String modulesType;
	String homeBookId;
	String name;
	String activityId;
	String linkUrl;
	String id;
	String category;
	String cronType;

	BookHomeDataBookSingleBookConfig({this.weixinUrl, this.channelIds, this.cateGender, this.isShare, this.imageUrl, this.versionIds, this.homeConfigSort, this.homeConfigStatus, this.weixinId, this.relationId, this.bookInfo, this.linkType, this.weixinIsPhone, this.modulesType, this.homeBookId, this.name, this.activityId, this.linkUrl, this.id, this.category, this.cronType});

	BookHomeDataBookSingleBookConfig.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		cateGender = json['cate_gender'];
		isShare = json['is_share'];
		imageUrl = json['image_url'];
		versionIds = json['version_ids'];
		homeConfigSort = json['home_config_sort'];
		homeConfigStatus = json['home_config_status'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		bookInfo = json['book_info'] != null ? new BookHomeDataBookSingleBookConfigBookInfo.fromJson(json['book_info']) : null;
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		modulesType = json['modules_type'];
		homeBookId = json['home_book_id'];
		name = json['name'];
		activityId = json['activity_id'];
		linkUrl = json['link_url'];
		id = json['id'];
		category = json['category'];
		cronType = json['cron_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['cate_gender'] = this.cateGender;
		data['is_share'] = this.isShare;
		data['image_url'] = this.imageUrl;
		data['version_ids'] = this.versionIds;
		data['home_config_sort'] = this.homeConfigSort;
		data['home_config_status'] = this.homeConfigStatus;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		if (this.bookInfo != null) {
      data['book_info'] = this.bookInfo.toJson();
    }
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['modules_type'] = this.modulesType;
		data['home_book_id'] = this.homeBookId;
		data['name'] = this.name;
		data['activity_id'] = this.activityId;
		data['link_url'] = this.linkUrl;
		data['id'] = this.id;
		data['category'] = this.category;
		data['cron_type'] = this.cronType;
		return data;
	}
}

class BookHomeDataBookSingleBookConfigBookInfo {
	String sNo;
	String wordcount;
	String author;
	String chaptersCount;
	String latelyFollower;
	String title;
	String lastChapter;
	String shortIntro;
	String cover;
	String isSerial;
	String sourceUrl;
	String sourceType;
	BookHomeDataBookSingleBookConfigBookInfoCat cat;
	String minorCate;
	String lastChapterId;
	String longIntro;
	String sId;
	String sourceName;
	String sourceId;
	String category;
	String updated;

	BookHomeDataBookSingleBookConfigBookInfo({this.sNo, this.wordcount, this.author, this.chaptersCount, this.latelyFollower, this.title, this.lastChapter, this.shortIntro, this.cover, this.isSerial, this.sourceUrl, this.sourceType, this.cat, this.minorCate, this.lastChapterId, this.longIntro, this.sId, this.sourceName, this.sourceId, this.category, this.updated});

	BookHomeDataBookSingleBookConfigBookInfo.fromJson(Map<String, dynamic> json) {
		sNo = json['_no'];
		wordcount = json['wordcount'];
		author = json['author'];
		chaptersCount = json['chaptersCount'];
		latelyFollower = json['latelyFollower'];
		title = json['title'];
		lastChapter = json['lastChapter'];
		shortIntro = json['shortIntro'];
		cover = json['cover'];
		isSerial = json['isSerial'];
		sourceUrl = json['sourceUrl'];
		sourceType = json['sourceType'];
		cat = json['cat'] != null ? new BookHomeDataBookSingleBookConfigBookInfoCat.fromJson(json['cat']) : null;
		minorCate = json['minorCate'];
		lastChapterId = json['lastChapterId'];
		longIntro = json['longIntro'];
		sId = json['_id'];
		sourceName = json['sourceName'];
		sourceId = json['source_id'];
		category = json['category'];
		updated = json['updated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['_no'] = this.sNo;
		data['wordcount'] = this.wordcount;
		data['author'] = this.author;
		data['chaptersCount'] = this.chaptersCount;
		data['latelyFollower'] = this.latelyFollower;
		data['title'] = this.title;
		data['lastChapter'] = this.lastChapter;
		data['shortIntro'] = this.shortIntro;
		data['cover'] = this.cover;
		data['isSerial'] = this.isSerial;
		data['sourceUrl'] = this.sourceUrl;
		data['sourceType'] = this.sourceType;
		if (this.cat != null) {
      data['cat'] = this.cat.toJson();
    }
		data['minorCate'] = this.minorCate;
		data['lastChapterId'] = this.lastChapterId;
		data['longIntro'] = this.longIntro;
		data['_id'] = this.sId;
		data['sourceName'] = this.sourceName;
		data['source_id'] = this.sourceId;
		data['category'] = this.category;
		data['updated'] = this.updated;
		return data;
	}
}

class BookHomeDataBookSingleBookConfigBookInfoCat {
	String name;
	String sId;

	BookHomeDataBookSingleBookConfigBookInfoCat({this.name, this.sId});

	BookHomeDataBookSingleBookConfigBookInfoCat.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		sId = json['_id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['_id'] = this.sId;
		return data;
	}
}

class BookHomeDataBestLove {
	String channelIds;
	String gender;
	String modulesType;
	List<BookHomeDataBestLoveBookConfig> bookConfig;
	String versionIds;
	String name;
	String homeStatus;
	String id;
	String homeSort;

	BookHomeDataBestLove({this.channelIds, this.gender, this.modulesType, this.bookConfig, this.versionIds, this.name, this.homeStatus, this.id, this.homeSort});

	BookHomeDataBestLove.fromJson(Map<String, dynamic> json) {
		channelIds = json['channel_ids'];
		gender = json['gender'];
		modulesType = json['modules_type'];
		if (json['book_config'] != null) {
			bookConfig = new List<BookHomeDataBestLoveBookConfig>();(json['book_config'] as List).forEach((v) { bookConfig.add(new BookHomeDataBestLoveBookConfig.fromJson(v)); });
		}
		versionIds = json['version_ids'];
		name = json['name'];
		homeStatus = json['home_status'];
		id = json['id'];
		homeSort = json['home_sort'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['channel_ids'] = this.channelIds;
		data['gender'] = this.gender;
		data['modules_type'] = this.modulesType;
		if (this.bookConfig != null) {
      data['book_config'] =  this.bookConfig.map((v) => v.toJson()).toList();
    }
		data['version_ids'] = this.versionIds;
		data['name'] = this.name;
		data['home_status'] = this.homeStatus;
		data['id'] = this.id;
		data['home_sort'] = this.homeSort;
		return data;
	}
}

class BookHomeDataBestLoveBookConfig {
	String weixinUrl;
	String channelIds;
	String cateGender;
	String isShare;
	String imageUrl;
	String versionIds;
	String homeConfigSort;
	String homeConfigStatus;
	String weixinId;
	String relationId;
	BookHomeDataBestLoveBookConfigBookInfo bookInfo;
	String linkType;
	String weixinIsPhone;
	String modulesType;
	String homeBookId;
	String name;
	String activityId;
	String linkUrl;
	String id;
	String category;
	String cronType;

	BookHomeDataBestLoveBookConfig({this.weixinUrl, this.channelIds, this.cateGender, this.isShare, this.imageUrl, this.versionIds, this.homeConfigSort, this.homeConfigStatus, this.weixinId, this.relationId, this.bookInfo, this.linkType, this.weixinIsPhone, this.modulesType, this.homeBookId, this.name, this.activityId, this.linkUrl, this.id, this.category, this.cronType});

	BookHomeDataBestLoveBookConfig.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		cateGender = json['cate_gender'];
		isShare = json['is_share'];
		imageUrl = json['image_url'];
		versionIds = json['version_ids'];
		homeConfigSort = json['home_config_sort'];
		homeConfigStatus = json['home_config_status'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		bookInfo = json['book_info'] != null ? new BookHomeDataBestLoveBookConfigBookInfo.fromJson(json['book_info']) : null;
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		modulesType = json['modules_type'];
		homeBookId = json['home_book_id'];
		name = json['name'];
		activityId = json['activity_id'];
		linkUrl = json['link_url'];
		id = json['id'];
		category = json['category'];
		cronType = json['cron_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['cate_gender'] = this.cateGender;
		data['is_share'] = this.isShare;
		data['image_url'] = this.imageUrl;
		data['version_ids'] = this.versionIds;
		data['home_config_sort'] = this.homeConfigSort;
		data['home_config_status'] = this.homeConfigStatus;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		if (this.bookInfo != null) {
      data['book_info'] = this.bookInfo.toJson();
    }
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['modules_type'] = this.modulesType;
		data['home_book_id'] = this.homeBookId;
		data['name'] = this.name;
		data['activity_id'] = this.activityId;
		data['link_url'] = this.linkUrl;
		data['id'] = this.id;
		data['category'] = this.category;
		data['cron_type'] = this.cronType;
		return data;
	}
}

class BookHomeDataBestLoveBookConfigBookInfo {
	String sNo;
	String wordcount;
	String author;
	String chaptersCount;
	String latelyFollower;
	String title;
	String lastChapter;
	String shortIntro;
	String cover;
	String isSerial;
	String sourceUrl;
	String sourceType;
	BookHomeDataBestLoveBookConfigBookInfoCat cat;
	String minorCate;
	String lastChapterId;
	String longIntro;
	String sId;
	String sourceName;
	String sourceId;
	String category;
	String updated;

	BookHomeDataBestLoveBookConfigBookInfo({this.sNo, this.wordcount, this.author, this.chaptersCount, this.latelyFollower, this.title, this.lastChapter, this.shortIntro, this.cover, this.isSerial, this.sourceUrl, this.sourceType, this.cat, this.minorCate, this.lastChapterId, this.longIntro, this.sId, this.sourceName, this.sourceId, this.category, this.updated});

	BookHomeDataBestLoveBookConfigBookInfo.fromJson(Map<String, dynamic> json) {
		sNo = json['_no'];
		wordcount = json['wordcount'];
		author = json['author'];
		chaptersCount = json['chaptersCount'];
		latelyFollower = json['latelyFollower'];
		title = json['title'];
		lastChapter = json['lastChapter'];
		shortIntro = json['shortIntro'];
		cover = json['cover'];
		isSerial = json['isSerial'];
		sourceUrl = json['sourceUrl'];
		sourceType = json['sourceType'];
		cat = json['cat'] != null ? new BookHomeDataBestLoveBookConfigBookInfoCat.fromJson(json['cat']) : null;
		minorCate = json['minorCate'];
		lastChapterId = json['lastChapterId'];
		longIntro = json['longIntro'];
		sId = json['_id'];
		sourceName = json['sourceName'];
		sourceId = json['source_id'];
		category = json['category'];
		updated = json['updated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['_no'] = this.sNo;
		data['wordcount'] = this.wordcount;
		data['author'] = this.author;
		data['chaptersCount'] = this.chaptersCount;
		data['latelyFollower'] = this.latelyFollower;
		data['title'] = this.title;
		data['lastChapter'] = this.lastChapter;
		data['shortIntro'] = this.shortIntro;
		data['cover'] = this.cover;
		data['isSerial'] = this.isSerial;
		data['sourceUrl'] = this.sourceUrl;
		data['sourceType'] = this.sourceType;
		if (this.cat != null) {
      data['cat'] = this.cat.toJson();
    }
		data['minorCate'] = this.minorCate;
		data['lastChapterId'] = this.lastChapterId;
		data['longIntro'] = this.longIntro;
		data['_id'] = this.sId;
		data['sourceName'] = this.sourceName;
		data['source_id'] = this.sourceId;
		data['category'] = this.category;
		data['updated'] = this.updated;
		return data;
	}
}

class BookHomeDataBestLoveBookConfigBookInfoCat {
	String name;
	String sId;

	BookHomeDataBestLoveBookConfigBookInfoCat({this.name, this.sId});

	BookHomeDataBestLoveBookConfigBookInfoCat.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		sId = json['_id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['_id'] = this.sId;
		return data;
	}
}

class BookHomeDataBounced {
	String weixinUrl;
	String channelIds;
	String versionIds;
	String type;
	String weixinId;
	String relationId;
	int bouncedCount;
	String linkType;
	String weixinIsPhone;
	String imgUrl;
	int userBouncedCount;
	String name;
	String linkUrl;
	int isBounced;
	String category;

	BookHomeDataBounced({this.weixinUrl, this.channelIds, this.versionIds, this.type, this.weixinId, this.relationId, this.bouncedCount, this.linkType, this.weixinIsPhone, this.imgUrl, this.userBouncedCount, this.name, this.linkUrl, this.isBounced, this.category});

	BookHomeDataBounced.fromJson(Map<String, dynamic> json) {
		weixinUrl = json['weixin_url'];
		channelIds = json['channel_ids'];
		versionIds = json['version_ids'];
		type = json['type'];
		weixinId = json['weixin_id'];
		relationId = json['relation_id'];
		bouncedCount = json['bounced_count'];
		linkType = json['link_type'];
		weixinIsPhone = json['weixin_is_phone'];
		imgUrl = json['img_url'];
		userBouncedCount = json['user_bounced_count'];
		name = json['name'];
		linkUrl = json['link_url'];
		isBounced = json['is_bounced'];
		category = json['category'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['weixin_url'] = this.weixinUrl;
		data['channel_ids'] = this.channelIds;
		data['version_ids'] = this.versionIds;
		data['type'] = this.type;
		data['weixin_id'] = this.weixinId;
		data['relation_id'] = this.relationId;
		data['bounced_count'] = this.bouncedCount;
		data['link_type'] = this.linkType;
		data['weixin_is_phone'] = this.weixinIsPhone;
		data['img_url'] = this.imgUrl;
		data['user_bounced_count'] = this.userBouncedCount;
		data['name'] = this.name;
		data['link_url'] = this.linkUrl;
		data['is_bounced'] = this.isBounced;
		data['category'] = this.category;
		return data;
	}
}
