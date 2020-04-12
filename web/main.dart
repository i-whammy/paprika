import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:paprika/app_component.template.dart' as ng;

import 'main.template.dart' as self;

@GenerateInjector(
  routerProvidersHash,
)
final InjectorFactory factory = self.factory$Injector;
void main() {
  runApp(ng.AppComponentNgFactory, createInjector: factory);
}
