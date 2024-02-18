class DailyTodo {
  DailyTodo({required this.content, this.done = false, required this.id});
  String id;
  String content;
  bool done;

  DailyTodo copyWith({
    String? id,
    String? content,
    bool? done,
  }) {
    return DailyTodo(
      id: id ?? this.id, 
      content: content ?? this.content, 
      done: done ?? this.done, 
    );
  }
}
