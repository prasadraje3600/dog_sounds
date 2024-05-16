class TranslatorModal {
  String? id;
  String? postName;
  String? postAudio;

  TranslatorModal({this.id, this.postName, this.postAudio});

  TranslatorModal.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    postName = json["post_name"];
    postAudio = json["post_audio"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["post_name"] = postName;
    _data["post_audio"] = postAudio;
    return _data;
  }

  static List<TranslatorModal>oftranslator(List translator) {
    return translator.map((e) => TranslatorModal.fromJson(e)).toList();
  }
}
