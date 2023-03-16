class Todo {
  int userId;
  int id;
  String title;
  bool completed;


  Todo(this.userId, this.id, this.title, this.completed);

  factory Todo.fromJson(Map<String, dynamic> json) {
    int userId = json["userId"];
    int id = json["id"];
    String title = json["title"];
    bool completed = json["completed"];
    return Todo(userId, id, title, completed);
  }

  Map<String, dynamic> toJson() {
    return {
      "userId" : userId,
      "id" : id,
      "title" : title,
      "completed" : completed,
    };
  }

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}