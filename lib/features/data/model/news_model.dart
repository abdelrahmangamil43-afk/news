class NewsModel {
  String? _status;
  int? _totalResults;
  List<Articles>? _articles;

  NewsModel({String? status, int? totalResults, List<Articles>? articles}) {
    if (status != null) {
      this._status = status;
    }
    if (totalResults != null) {
      this._totalResults = totalResults;
    }
    if (articles != null) {
      this._articles = articles;
    }
  }

  String? get status => _status;
  set status(String? status) => _status = status;
  int? get totalResults => _totalResults;
  set totalResults(int? totalResults) => _totalResults = totalResults;
  List<Articles>? get articles => _articles;
  set articles(List<Articles>? articles) => _articles = articles;

  NewsModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _totalResults = json['totalResults'];
    if (json['articles'] != null) {
      _articles = <Articles>[];
      json['articles'].forEach((v) {
        _articles!.add(new Articles.fromJson(v));
      });
    }
  }
}

class Articles {
  String? _author;
  String? _title;
  String? _description;
  String? _urlToImage;
  String? _content;

  Articles({
    String? author,
    String? title,
    String? description,

    String? urlToImage,

    String? content,
  }) {
    if (author != null) {
      this._author = author;
    }
    if (title != null) {
      this._title = title;
    }
    if (description != null) {
      this._description = description;
    }

    if (urlToImage != null) {
      this._urlToImage = urlToImage;
    }

    if (content != null) {
      this._content = content;
    }
  }

  String? get author => _author;
  set author(String? author) => _author = author;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get description => _description;
  set description(String? description) => _description = description;

  String? get urlToImage => _urlToImage;
  set urlToImage(String? urlToImage) => _urlToImage = urlToImage;

  String? get content => _content;
  set content(String? content) => _content = content;

  Articles.fromJson(Map<String, dynamic> json) {
    _author = json['author'];
    _title = json['title'];
    _description = json['description'];

    _urlToImage = json['urlToImage'];

    _content = json['content'];
  }
}
