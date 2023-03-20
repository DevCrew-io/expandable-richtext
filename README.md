# Expandable Rich Text

[![pub package](https://img.shields.io/pub/v/expandable_rich_text.svg)](https://pub.dev/packages/expandable_rich_text)
[![license](https://img.shields.io/badge/license-MIT-green)](https://github.com/DevCrew-io/expandable-richtext/blob/main/LICENSE)
![](https://img.shields.io/badge/Code-Dart-informational?style=flat&logo=dart&color=29B1EE)
![](https://img.shields.io/badge/Code-Flutter-informational?style=flat&logo=flutter&color=0C459C)

A text widget which you can use to initially only show a defined number of lines of a probably long
text. it also support clickable @‌mention, #hashtag and hyperlinks. You can define styles for
@‌mention, #hashtag and hyperlinks, also apply custom style on segments of text.

## Features

- Collapse and Expand text
- Configure text to show to Expand text (`expandText`) and to Collapse text (`collapseText`)
- Control whether the ellipsis (`showEllipsis`) is part of the Expand/Collapse text
- Expande and Collapse animation
- Callback for expanded changed event (`onExpandedChanged`)
- Apply different style at @‌mention, #hashtag, hyperlinks and text segments
- Handle click on @‌mention, #hashtag, hyperlinks and text segments
- Programmatically

![Example with maxLines=1](https://user-images.githubusercontent.com/85495993/225886368-8b2f9130-3af3-411c-8a21-e817c1a92873.gif)

## Getting started

Add this to your package's pubspec.yaml file:

```
dependencies:
  expandable_rich_text: 1.0.0
```

Next, import the package into your dart code:

```dart
import 'package:expandable_rich_text/expandable_rich_text.dart';
```

### Usage

If `longText` exceeds one two:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    longText,
    expandText: 'show more',
    collapseText: 'show less',
    maxLines: 2,
    linkColor: Colors.blue,
  );
}
```

If `longText` have @‌mention, #hashtag, hyperlinks and text segments:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
      longText,
      expandText: 'show more',
      collapseText: 'show less',
      maxLines: 1,
      linkColor: Colors.blue,
      mentionStyle: const TextStyle(
          color: Colors.blueAccent, fontSize: 16, fontWeight: FontWeight.bold),
      hashtagStyle: const TextStyle(
          fontSize: 16, color: Colors.white, backgroundColor: Colors.black87),
      urlStyle: const TextStyle(
          color: Colors.lightBlueAccent, decoration: TextDecoration.underline),
      customTagStyle: const TextStyle(fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 16,
          color: Colors.white,
          backgroundColor: Colors.lightBlueAccent,
          decoration: TextDecoration.underline)
  );
}
```

### Advance Usage

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    allText, //assume this comes from backend
    expandText: expandingText,
    collapseText: collapsingText,
    expanded: false,
    onExpandedChanged: (flag) => {},
    toggleTextColor: Colors.black,
    showEllipsis: true,
    toggleTextStyle: linkTextStyle,
    urlStyle: urlTextStyle,
    onUrlTap: (url) => {},
    hashtagStyle: hashTagTextStyle,
    mentionStyle: mentionTextStyle,
    onMentionTap: (mention) => {},
    customTagStyle: customTagStyle,
    onCustomTagTap: (tag) => {},
    expandOnTextTap: true,
    collapseOnTextTap: true,
    style: const TextStyle(color: Colors.black, fontSize: 24),
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.start,
    textScaleFactor: 1.0,
    maxLines: 2,
    animation: true,
    animationDuration: const Duration(milliseconds: 200),
    animationCurve: Curves.fastLinearToSlowEaseIn,
  );
}
```

## Bugs and feature requests

Have a bug or a feature request? Please first search for existing and closed issues. If your problem
or idea is not addressed
yet, [please open a new issue](https://github.com/DevCrew-io/expandable-richtext/issues/new).

## Author

[DevCrew I/O](https://devcrew.io/)
<h3 align=“left”>Connect with Us:</h3>
<p align=“left”>
<a href=“https://devcrew.io” target=“blank”><img align=“center” src=“https://devcrew.io/wp-content/uploads/2022/09/logo.svg” alt=“devcrew.io” height=“35" width=“35” /></a>
<a href=“https://www.linkedin.com/company/devcrew-io/mycompany/” target=“blank”><img align=“center” src=“https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg” alt=“mycompany” height=“30” width=“40" /></a>
<a href=“https://www.facebook.com/devcrew.io” target=“blank”><img align=“center” src=“https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg” alt=“devcrew.io” height=“30" width=“40” /></a>
<a href=“https://www.instagram.com/devcrew.io” target=“blank”><img align=“center” src=“https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg” alt=“devcrew.io” height=“30” width=“40" /></a>
<a href=“https://github.com/DevCrew-io” target=“blank”><img align=“center” src=“https://cdn-icons-png.flaticon.com/512/733/733553.png” alt=“DevCrew-io” height=“32" width=“32” /></a>
</p>
## Contributing
Contributions, issues, and feature requests are welcome!
## Show your Support
Give a start if this project helped you.

## Copyright & License

Code copyright 2023–2024 DevCrew I/O. Code released under
the [MIT license](https://github.com/DevCrew-io/expandable-richtext/blob/main/LICENSE).
