class Comment {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Comment(this.postId, this.id, this.name, this.email, this.body);

  factory Comment.fromJson(Map<String, dynamic> json) {
    int postId = json["postId"];
    int id = json["id"];
    String name = json["name"];
    String email = json["email"];
    String body = json["body"];
    return Comment(postId, id, name, email, body);
  }

  Map<String, dynamic> toJson() {
    return {
      "postId" : postId,
      "id" : id,
      "name" : name,
      "email" : email,
      "body" : body,
    };
  }

  @override
  String toString() {
    return 'Comment{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
  }
}