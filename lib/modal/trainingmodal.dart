class Training {
  String? id;
  String? title;
  String? postImage;
  String? description;

  Training({this.id, this.title, this.postImage, this.description});

  Training.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    postImage = json["post_image"];
    description = json["description"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["post_image"] = postImage;
    _data["description"] = description;
    return _data;
  }

  static List<Training> oftraining(List dogtraining) {
    return dogtraining.map((e) => Training.fromJson(e)).toList();
  }
}
