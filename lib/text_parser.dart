import 'package:expandable_richtext/text_segment.dart';

List<TextSegment> parseText(String? text) {
  final segments = <TextSegment>[];

  if (text == null || text.isEmpty) {
    return segments;
  }

  RegExp exp = RegExp(
      r'(?<keyword>(#|@)([\p{Alphabetic}\p{Mark}\p{Decimal_Number}\p{Connector_Punctuation}\p{Join_Control}]+)|(?<url>(?:(?:https?|ftp):\/\/)?[-a-z0-9@:%._\+~#=]{1,256}\.[a-z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?)|(?<tag>(<[\w+>?][^<]*[<\/\w+>?]+)))',
      unicode: true);
  final matches = exp.allMatches(text);
  var start = 0;
  matches.forEach((match) {
    // text before the keyword
    if (match.start > start) {
      if (segments.isNotEmpty && segments.last.isText) {
        segments.last.text += text.substring(start, match.start);
      } else {
        segments.add(TextSegment(text.substring(start, match.start)));
      }
      start = match.start;
    }

    final url = match.namedGroup('url');
    final keyword = match.namedGroup('keyword');
    final tag = match.namedGroup('tag');

    if (url != null) {
      segments.add(TextSegment(url, url, false, false, false, null, true));
    } else if (keyword != null) {
      final isWord = match.start == 0 ||
          [' ', '\n'].contains(text.substring(match.start - 1, start));
      if (!isWord) {
        return;
      }

      final isHashtag = keyword.startsWith('#');
      final isMention = keyword.startsWith('@');
      final isTag = keyword.startsWith('<');
      var subString;
      String? tagName;
      if (isTag) {
        final regexStart = RegExp(r"<\w+>");
        final regexEnd = RegExp(r"<\/*\w*>*");
        final regexTag = RegExp(r"[<>]");
        final match = regexTag.firstMatch(keyword);
        tagName = keyword.replaceAll(regexTag, "");
        subString = keyword.replaceAll(regexStart, "");
        subString = subString.replaceAll(regexEnd, "");
      } else {
        subString = keyword;
      }
      segments.add(TextSegment(subString, keyword.substring(1), isHashtag,
          isMention, isTag, tagName));
    }

    start = match.end;
  });

  // text after the last keyword or the whole text if it does not contain any keywords
  if (start < text.length) {
    if (segments.isNotEmpty && segments.last.isText) {
      segments.last.text += text.substring(start);
    } else {
      segments.add(TextSegment(text.substring(start)));
    }
  }

  return segments;
}
