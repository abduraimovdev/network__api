class Album {
  int userId;
  int id;
  String title;


  Album(this.userId, this.id, this.title);

  factory Album.fromJson(Map<String, dynamic> json) {
    int userId = json["userId"];
    int id = json["id"];
    String title = json["title"];
    return Album(userId, id, title);
  }

  Map<String, dynamic> toJson() {
    return {
      "userId" : userId,
      "id" : id,
      "title" : title,
    };
  }

  @override
  String toString() {
    return 'Album{userId: $userId, id: $id, title: $title}';
  }
}