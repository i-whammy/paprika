import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:paprika/src/articles/article_list.dart';
import 'package:paprika/src/routes/routes.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [ArticleList, routerDirectives],
  exports: [Routes],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
