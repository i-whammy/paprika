import 'package:angular/angular.dart';
import 'package:paprika/src/articles/article.dart';

@Component(
  selector: 'article-list',
  template: '''
  <ul>
    <li *ngFor="let article of articles">
      {{article.title}}
    </li>
  </ul>
  ''',
  directives: [coreDirectives],
)
class ArticleList {
  List<Article> articles = [Article(1, 'hoge'), Article(2, 'fuga')];
}