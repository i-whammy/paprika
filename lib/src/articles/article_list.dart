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
  providers: [ClassProvider(ArticleDriver), ClassProvider(ArticleGateway), ClassProvider(ArticleService)]
)
class ArticleList implements OnInit {
  final ArticleService _service;
  ArticleList(this._service);

  List<Article> articles;

  @override
  void ngOnInit() {
    articles = _service.getAll();
  }
}