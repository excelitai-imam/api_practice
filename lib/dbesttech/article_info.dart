class ArticleInfo {
  int id = 0;
  String articleContent = "";
  String title = "";
  String description = "";
  String img = "";
  ArticleInfo(this.img, this.id, this.articleContent, this.title,
      this.description, String createdAt, String author);
  ArticleInfo.fromJson(Map json)
      : id = json['id'],
        articleContent = json['article_content'],
        description = json['description'],
        title = json['title'],
        img = json['img'];
}
