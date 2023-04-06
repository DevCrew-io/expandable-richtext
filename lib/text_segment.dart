class TextSegment {
  String text;

  final String? name;
  final bool isHashtag;
  final bool isMention;
  final bool isUrl;
  final bool isTag;
  final String? tagName;

  bool get isText => !isHashtag && !isMention && !isUrl && !isTag;

  TextSegment(
    this.text, [
    this.name,
    this.isHashtag = false,
    this.isMention = false,
    this.isTag = false,
    this.tagName,
    this.isUrl = false,
  ]);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextSegment &&
          runtimeType == other.runtimeType &&
          text == other.text &&
          name == other.name &&
          isHashtag == other.isHashtag &&
          isMention == other.isMention &&
          isTag == other.isTag &&
          isUrl == other.isUrl &&
          tagName == other.tagName;

  @override
  int get hashCode =>
      text.hashCode ^
      name.hashCode ^
      isHashtag.hashCode ^
      isMention.hashCode ^
      isTag.hashCode ^
      tagName.hashCode ^
      isUrl.hashCode;
}
