import 'package:angular_router/angular_router.dart';

import 'package:paprika/src/articles/article_list.template.dart' as articles_template;
import 'package:paprika/src/articles/new_article.template.dart' as new_article_template;

class Routes{
  static final articles = RouteDefinition(
    routePath: RoutePath(path: 'articles'),
    component: articles_template.ArticleListNgFactory,
  );
  static final newArticle = RouteDefinition(
    routePath: RoutePath(path: articles.toUrl() + '/new'),
    component: new_article_template.NewArticleNgFactory,
  );

  static final all = <RouteDefinition>[
    articles,
    newArticle
  ];
}