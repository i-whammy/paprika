import 'package:angular_router/angular_router.dart';

import 'package:paprika/src/articles/article_list.template.dart' as articles_template;

class Routes{
  static final articles = RouteDefinition(
    routePath: RoutePath(path: 'articles'),
    component: articles_template.ArticleListNgFactory,
  );

  static final all = <RouteDefinition>[
    articles,
  ];
}