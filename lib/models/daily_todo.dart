class DailyTodo {
  DailyTodo(
      {required this.content,
      this.done = false,
      required this.id,
      this.timeCount = Duration.zero});

  String id;
  String content;
  bool done;
  Duration timeCount;

  String get formattedTimeCount {
    return timeCount.toString().split('.').first.padLeft(8, "0");
  }

  DailyTodo copyWith({
    String? id,
    String? content,
    bool? done,
    Duration? timeCount,
  }) {
    return DailyTodo(
        id: id ?? this.id,
        content: content ?? this.content,
        done: done ?? this.done,
        timeCount: timeCount ?? this.timeCount);
  }

  DailyTodo increasedBySecond() {
    return copyWith(timeCount: timeCount + const Duration(seconds: 1));
  }
}
