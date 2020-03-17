class BookDetailEntity {
	BookDetailData data;
	int errorCode;
	bool ok;
	String message;

	BookDetailEntity({this.data, this.errorCode, this.ok, this.message});

	BookDetailEntity.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new BookDetailData.fromJson(json['data']) : null;
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

class BookDetailData {
	List<BookDetailDataBookListByEqualTag> bookListByEqualTags;
	List<Null> topBooks;
	String percentage;
	List<BookDetailDataHotSearchBookList> hotSearchBookList;
	List<BookDetailDataBookListByName> bookListByName;
	List<Null> bookListByTags;

	BookDetailData({this.bookListByEqualTags, this.topBooks, this.percentage, this.hotSearchBookList, this.bookListByName, this.bookListByTags});

	BookDetailData.fromJson(Map<String, dynamic> json) {
		if (json['book_list_by_equal_tags'] != null) {
			bookListByEqualTags = new List<BookDetailDataBookListByEqualTag>();(json['book_list_by_equal_tags'] as List).forEach((v) { bookListByEqualTags.add(new BookDetailDataBookListByEqualTag.fromJson(v)); });
		}
		if (json['top_books'] != null) {
			topBooks = new List<Null>();
		}
		percentage = json['percentage'];
		if (json['hot_search_book_list'] != null) {
			hotSearchBookList = new List<BookDetailDataHotSearchBookList>();(json['hot_search_book_list'] as List).forEach((v) { hotSearchBookList.add(new BookDetailDataHotSearchBookList.fromJson(v)); });
		}
		if (json['book_list_by_name'] != null) {
			bookListByName = new List<BookDetailDataBookListByName>();(json['book_list_by_name'] as List).forEach((v) { bookListByName.add(new BookDetailDataBookListByName.fromJson(v)); });
		}
		if (json['book_list_by_tags'] != null) {
			bookListByTags = new List<Null>();
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bookListByEqualTags != null) {
      data['book_list_by_equal_tags'] =  this.bookListByEqualTags.map((v) => v.toJson()).toList();
    }
		if (this.topBooks != null) {
      data['top_books'] =  [];
    }
		data['percentage'] = this.percentage;
		if (this.hotSearchBookList != null) {
      data['hot_search_book_list'] =  this.hotSearchBookList.map((v) => v.toJson()).toList();
    }
		if (this.bookListByName != null) {
      data['book_list_by_name'] =  this.bookListByName.map((v) => v.toJson()).toList();
    }
		if (this.bookListByTags != null) {
      data['book_list_by_tags'] =  [];
    }
		return data;
	}
}

class BookDetailDataBookListByEqualTag {
	String bookShortIntro;
	String catName;
	String catId;
	String bookAuthor;
	String bookId;
	String bookCover;
	String bookName;
	String bookWordCount;
	String readPeople;

	BookDetailDataBookListByEqualTag({this.bookShortIntro, this.catName, this.catId, this.bookAuthor, this.bookId, this.bookCover, this.bookName, this.bookWordCount, this.readPeople});

	BookDetailDataBookListByEqualTag.fromJson(Map<String, dynamic> json) {
		bookShortIntro = json['book_short_intro'];
		catName = json['cat_name'];
		catId = json['cat_id'];
		bookAuthor = json['book_author'];
		bookId = json['book_id'];
		bookCover = json['book_cover'];
		bookName = json['book_name'];
		bookWordCount = json['book_word_count'];
		readPeople = json['read_people'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['book_short_intro'] = this.bookShortIntro;
		data['cat_name'] = this.catName;
		data['cat_id'] = this.catId;
		data['book_author'] = this.bookAuthor;
		data['book_id'] = this.bookId;
		data['book_cover'] = this.bookCover;
		data['book_name'] = this.bookName;
		data['book_word_count'] = this.bookWordCount;
		data['read_people'] = this.readPeople;
		return data;
	}
}

class BookDetailDataHotSearchBookList {
	String bookShortIntro;
	String catName;
	String catId;
	String bookAuthor;
	String bookId;
	String bookCover;
	String bookName;
	String bookWordCount;

	BookDetailDataHotSearchBookList({this.bookShortIntro, this.catName, this.catId, this.bookAuthor, this.bookId, this.bookCover, this.bookName, this.bookWordCount});

	BookDetailDataHotSearchBookList.fromJson(Map<String, dynamic> json) {
		bookShortIntro = json['book_short_intro'];
		catName = json['cat_name'];
		catId = json['cat_id'];
		bookAuthor = json['book_author'];
		bookId = json['book_id'];
		bookCover = json['book_cover'];
		bookName = json['book_name'];
		bookWordCount = json['book_word_count'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['book_short_intro'] = this.bookShortIntro;
		data['cat_name'] = this.catName;
		data['cat_id'] = this.catId;
		data['book_author'] = this.bookAuthor;
		data['book_id'] = this.bookId;
		data['book_cover'] = this.bookCover;
		data['book_name'] = this.bookName;
		data['book_word_count'] = this.bookWordCount;
		return data;
	}
}

class BookDetailDataBookListByName {
	String bookShortIntro;
	String catName;
	String catId;
	String bookAuthor;
	String sourceType;
	String bookId;
	String bookCover;
	String sourceId;
	String bookName;
	String bookWordCount;
	String bookTags;
	String readPeople;

	BookDetailDataBookListByName({this.bookShortIntro, this.catName, this.catId, this.bookAuthor, this.sourceType, this.bookId, this.bookCover, this.sourceId, this.bookName, this.bookWordCount, this.bookTags, this.readPeople});

	BookDetailDataBookListByName.fromJson(Map<String, dynamic> json) {
		bookShortIntro = json['book_short_intro'];
		catName = json['cat_name'];
		catId = json['cat_id'];
		bookAuthor = json['book_author'];
		sourceType = json['source_type'];
		bookId = json['book_id'];
		bookCover = json['book_cover'];
		sourceId = json['source_id'];
		bookName = json['book_name'];
		bookWordCount = json['book_word_count'];
		bookTags = json['book_tags'];
		readPeople = json['read_people'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['book_short_intro'] = this.bookShortIntro;
		data['cat_name'] = this.catName;
		data['cat_id'] = this.catId;
		data['book_author'] = this.bookAuthor;
		data['source_type'] = this.sourceType;
		data['book_id'] = this.bookId;
		data['book_cover'] = this.bookCover;
		data['source_id'] = this.sourceId;
		data['book_name'] = this.bookName;
		data['book_word_count'] = this.bookWordCount;
		data['book_tags'] = this.bookTags;
		data['read_people'] = this.readPeople;
		return data;
	}
}
