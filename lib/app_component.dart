import 'package:angular/angular.dart';


import 'src/todo_list/todo_list_component.dart';
import 'src/todo_list1/todo_list_component1.dart';
import 'src/call/call.dart';
import 'src/hero/hero.dart';
import 'src/hero/hero_component.dart';
import 'src/hero/hero_service.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [coreDirectives, TodoListComponent,TodoListComponent1,CallComponent,HeroComponent],
  providers: [ClassProvider(HeroService)],
)
class AppComponent implements OnInit {
  final title = 'Tour of Heroes';//
  final HeroService _heroService;
  List<Hero> heroes;
  Hero selected;

  AppComponent(this._heroService);

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  void ngOnInit() => _getHeroes();

  void onSelect(Hero hero) => selected = hero;
}

