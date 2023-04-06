# Expandable RichText

[![pub package](https://img.shields.io/pub/v/expandable_richtext.svg)](https://pub.dev/packages/expandable_richtext)
[![license](https://img.shields.io/badge/license-MIT-green)](https://github.com/DevCrew-io/expandable-richtext/blob/main/LICENSE)
![](https://img.shields.io/badge/Code-Dart-informational?style=flat&logo=dart&color=29B1EE)
![](https://img.shields.io/badge/Code-Flutter-informational?style=flat&logo=flutter&color=0C459C)

A text widget that you can use to initially only show a defined number of lines of a probably long
text. It also supports clickable @‌mention, #hashtag, and hyperlinks. You can define styles
for `@‌mention`, `#hashtag`, and `hyperlinks` and apply `custom styles` on text segments.

## Features

- Collapse and Expand text
- Configure text to show to Expand text (`expandText`) and to Collapse text (`collapseText`)
- Control whether the ellipsis (`showEllipsis`) is part of the Expand/Collapse text
- Expand and Collapse animation
- Callback for expanded changed event (`onExpandedChanged`)
- Apply different style at @‌mention, #hashtag, hyperlinks and text segments
- Handle click on @‌mention, #hashtag, hyperlinks and text segments
- Programmatically expand and collapse text

![Example with maxLines=1](https://user-images.githubusercontent.com/85495993/225886368-8b2f9130-3af3-411c-8a21-e817c1a92873.gif)

## Getting started

Add this to your package's pubspec.yaml file:

```
dependencies:
  expandable_richtext: 1.0.3
```

Next, import the package into your dart code:

```dart
import 'package:expandable_rich_text/expandable_richtext.dart';
```

### Usage

If `text` exceeds two lines:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    expandText: 'show more',
    collapseText: 'show less',
    maxLines: 2,
    linkColor: Colors.blue,
  );
}
```

If `text` have @‌mention, #hashtag, hyperlinks and text segments:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
      text: "Lorem ipsum dolor sit amet..., #consetetur @sadipscing elitr, <tag1>I am Admin1</tag1> tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <tag2>I am employee1</tag2> At vero eos et accusam et justo duo dolores et ea rebum Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum www.galley.com dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, <tag1>I am Admin2</tag1> diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. <tag2>I am employee2</tag2> Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
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
    text: "Lorem ipsum dolor sit amet..., #consetetur @sadipscing elitr, <tag1>I am Admin1</tag1> tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <tag2>I am employee1</tag2> At vero eos et accusam et justo duo dolores et ea rebum Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum www.galley.com dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, <tag1>I am Admin2</tag1> diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. <tag2>I am employee2</tag2> Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    expandText: 'show more',
    collapseText: 'show less',
    expanded: false,
    onExpandedChanged: (flag) => {},
    toggleTextColor: Colors.black,
    showEllipsis: true,
    toggleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),
    urlStyle: const TextStyle(color: Colors.lightBlueAccent, decoration: TextDecoration.underline),
    onUrlTap: (url) => {},
    hashtagStyle: const TextStyle(
        fontSize: 16, color: Colors.white, backgroundColor: Colors.black87),
    mentionStyle: const TextStyle(
        color: Colors.blueAccent, fontSize: 16, fontWeight: FontWeight.bold),
    onMentionTap: (mention) => {},
    customTagStyle: const TextStyle(fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 16,
        color: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        decoration: TextDecoration.underline),
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
<p align="left">
<a href="https://devcrew.io" target="blank"><img align="center" src="https://devcrew.io/wp-content/uploads/2022/09/logo.svg" alt="devcrew.io" height="35" width="35" /></a>
<a href="https://www.linkedin.com/company/devcrew-io/mycompany/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="mycompany" height="30" width="40" /></a>
<a href="https://www.facebook.com/devcrew.io" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="devcrew.io" height="30" width="40" /></a>
<a href="https://www.instagram.com/devcrew.io" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="devcrew.io" height="30" width="40" /></a>
<a href="https://github.com/DevCrew-io" target="blank"><img align="center" src="https://cdn-icons-png.flaticon.com/512/733/733553.png" alt="DevCrew-io" height="32" width="32" /></a>
</p>

## Contributing

Contributions, issues, and feature requests are welcome!

## Show your Support

Give a star if this project helped you.

## Copyright & License

Code copyright 2023 DevCrew I/O. Code released under
the [MIT license](https://github.com/DevCrew-io/expandable-richtext/blob/main/LICENSE).
