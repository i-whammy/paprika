class ArticleDriver {
  List<ArticleModel> getAll() => [
    ArticleModel(1, 'This is the title for 1st article'),
    ArticleModel(2, 'This is the title for 2nd article'),
    ArticleModel(3, 'This is the title for 3rd article'),
  ];
}

class ArticleGateway {
  final ArticleDriver _driver;
  ArticleGateway(this._driver);
  List<Article> getAll() => _convert(_driver.getAll());

  List<Article> _convert(List<ArticleModel> models) => models.map((model) => Article(model.id, model.title)).toList();
}

class ArticleService {
  final ArticleGateway _gateway;
  ArticleService(this._gateway);

  List<Article> getAll() => _gateway.getAll();
}

class Article {
  int id;
  String title;

  Article(this.id, this.title);
}

class ArticleModel {
  int id;
  String title;

  ArticleModel(this.id, this.title);
}
