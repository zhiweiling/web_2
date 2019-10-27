import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'todo_list_service1.dart';

@Component(
  selector: 'todo-list1',
  styleUrls: ['todo_list_component1.css'],
  templateUrl: 'todo_list_component1.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [ClassProvider(TodoListService1)],
)
class TodoListComponent1 implements OnInit {
  final TodoListService1 todoListService1;

  List<String> items = [];
  String newTodo = '';

  TodoListComponent1(this.todoListService1);

  @override
  Future<Null> ngOnInit() async {
    items = await todoListService1.getTodoList();
  }

  void add() {
    items.add(newTodo);
    newTodo = '';
  }

  String remove(int index) => items.removeAt(index);
}
