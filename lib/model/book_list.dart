class BookListEntity {
	BookListData data;
	int errorCode;
	bool ok;
	String message;

	BookListEntity({this.data, this.errorCode, this.ok, this.message});

	BookListEntity.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new BookListData.fromJson(json['data']) : null;
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

class BookListData {
	List<BookListDataBookListByVague> bookListByVague;
	int counts;
	int lastPage;
	int limit;
	int page;

	BookListData({this.bookListByVague, this.counts, this.lastPage, this.limit, this.page});

	BookListData.fromJson(Map<String, dynamic> json) {
		if (json['book_list_by_vague'] != null) {
			bookListByVague = new List<BookListDataBookListByVague>();(json['book_list_by_vague'] as List).forEach((v) { bookListByVague.add(new BookListDataBookListByVague.fromJson(v)); });
		}
		counts = json['counts'];
		lastPage = json['last_page'];
		limit = json['limit'];
		page = json['page'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bookListByVague != null) {
      data['book_list_by_vague'] =  this.bookListByVague.map((v) => v.toJson()).toList();
    }
		data['counts'] = this.counts;
		data['last_page'] = this.lastPage;
		data['limit'] = this.limit;
		data['page'] = this.page;
		return data;
	}
}

class BookListDataBookListByVague {
	String bookShortIntro;
	String catName;
	String catId;
	String bookAuthor;
	String bookId;
	String bookCover;
	String bookName;
	String bookWordCount;
	String readPeople;

	BookListDataBookListByVague({this.bookShortIntro, this.catName, this.catId, this.bookAuthor, this.bookId, this.bookCover, this.bookName, this.bookWordCount, this.readPeople});

	BookListDataBookListByVague.fromJson(Map<String, dynamic> json) {
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
