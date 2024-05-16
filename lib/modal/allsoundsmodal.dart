
class AllSounds {
    String? id;
    String? postName;
    String? postImage;
    String? postAudio;

    AllSounds({this.id, this.postName, this.postImage, this.postAudio});

    AllSounds.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        postName = json["post_name"];
        postImage = json["post_image"];
        postAudio = json["post_audio"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["post_name"] = postName;
        _data["post_image"] = postImage;
        _data["post_audio"] = postAudio;
        return _data;
    }
    static List<AllSounds>ofSound(List totalsound) {
    return totalsound.map((e) => AllSounds.fromJson(e)).toList();
  }
}