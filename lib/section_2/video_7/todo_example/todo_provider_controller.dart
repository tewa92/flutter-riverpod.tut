import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'todo_model.dart';

final todoListProvider = StateNotifierProvider<TodoListNotifier, List<Todo>>(
  (ref) => TodoListNotifier([]),
);

class TodoListNotifier extends StateNotifier<List<Todo>> {
  TodoListNotifier(super.state);

  void add(String title) {
    final newTodo = Todo(
      id: state.isEmpty ? 0 : state.last.id + 1,
      title: title,
      completed: false,
    );

    state = [...state, newTodo];
  }

  void remove(int id) {
    state = state.where((t) => t.id != id).toList();
  }

  void toggle(int id) {
    final todos = [...state];

    final index = todos.indexWhere((t) => t.id == id);
    if (index == -1) return;

    final todo = todos[index];
    todos[index] = todo.copyWith(completed: !todo.completed);

    state = todos;
  }
}