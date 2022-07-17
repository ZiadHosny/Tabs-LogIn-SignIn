// ignore_for_file: file_names

class Article {
  late String title;
  late String picture;
  late String content;
  late String id;

  Article(
      {required this.title,
      required this.picture,
      required this.content,
      required this.id});

  Article.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    picture = json['picture'];
    content = json['content'];
    id = json['id'];
  }
}
