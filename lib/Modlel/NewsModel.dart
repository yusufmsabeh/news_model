// ignore: file_names
class NewsModel {
  Sourse? sourse;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlImage;
  String? content;
  bool islike = false;
  NewsModel.fromJson(Map<String, dynamic> map) {
    this.sourse = new Sourse.fromJson(map['source']);
    this.author = map['author'];
    this.title = map['title'];
    this.description = map['description'];
    this.url = map['url'];
    this.urlImage = map['urlToImage'];
    this.content = map['content'];
  }
}

class Sourse {
  String? id;
  String? name;
  Sourse.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
  }
}
