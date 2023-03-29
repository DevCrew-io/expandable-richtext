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
  for (var match in matches) {
    /// it means that there is some text before matched word e.g text = some text some text [matched word]
    /// in simple words this block is adding text segment which is before @mention, #hashtag etc
    if (match.start > start) {
      // add this text to [segments] e.g add "some text some text"
      if (segments.isNotEmpty && segments.last.isText) {
        segments.last.text += text.substring(start, match.start);
      } else {
        segments.add(TextSegment(text.substring(start, match.start)));
      }
      // set the [start] to the point where match was found
      start = match.start;
    }

    final url = match.namedGroup('url');
    final keyword = match.namedGroup('keyword');

    if (url != null) {
      segments.add(TextSegment(url, url, false, false, false, null, true));
    } else if (keyword != null) {
      // if there is ' ' or '\n' before keyword i.e is there is blank space or \n before @mention, #hashtag etc e.g " @mention", "\n @mention"
      final isWord = match.start == 0 ||
          [' ', '\n'].contains(text.substring(match.start - 1, start));
      // if there is not ' ' or '\n' then continue the loop e.g in the case "sometext@mention"
      if (!isWord) {
        continue;
      }

      final isHashtag = keyword.startsWith('#');
      final isMention = keyword.startsWith('@');
      final isTag = keyword.startsWith('<');
      late String keywordToDisplay; //@mention, #hashtag
      String? tagName; // name of custom tag e.g tag1, tag2, admin
      /// if keyword is custom tag e.g <tag>some text</tag>
      /// extract 'tag' and remove <tag>, </tag> from keyword using regex
      if (isTag) {
        final regexTag = RegExp(r"[<>]"); // <>
        final regexStartTag = RegExp(r"<\w+>"); // <tag>
        final regexEndTag = RegExp(r"<\/*\w*>*"); //</tag>
        tagName = keyword.replaceAll(regexTag, "");
        keywordToDisplay = keyword.replaceAll(regexStartTag, "");
        keywordToDisplay = keywordToDisplay.replaceAll(regexEndTag, "");
      } else {
        keywordToDisplay = keyword;
      }
      segments.add(TextSegment(keywordToDisplay, keyword.substring(1),
          isHashtag, isMention, isTag, tagName));
    }

    start = match.end;
  }

  /// it means that there is some text after matched word e.g text = [matched word] some text some text
  /// in simple words this block is adding text segment which is after @mention, #hashtag etc
  if (start < text.length) {
    if (segments.isNotEmpty && segments.last.isText) {
      segments.last.text += text.substring(start);
    } else {
      segments.add(TextSegment(text.substring(start)));
    }
  }

  return segments;
}
