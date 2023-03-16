class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;


  Photo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  factory Photo.fromJson(Map<String, dynamic> json) {
    int albumId = json["albumId"];
    int id = json["id"];
    String title = json["title"];
    String url = json["url"];
    String thumbnailUrl = json["thumbnailUrl"];
    return Photo(albumId, id, title, url, thumbnailUrl);
  }

  Map<String, dynamic> toJson() {
    return {
      "albumId" : albumId,
      "id" : id,
      "title" : title,
      "url" : url,
      "thumbnailUrl" : thumbnailUrl,
    };
  }

  @override
  String toString() {
    return 'Photo{albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl}';
  }
}