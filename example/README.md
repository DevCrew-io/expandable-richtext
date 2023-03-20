# Example

an example app for `expandable_rich_text` package

### Usage

Minimum usage of ExpandableRichText:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    plainText, //assume this comes from backend
  );
}
```

Display simple text with option to collapse and expand and apply custome style on toggle
text(`see more`/`see less`):

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    plainText, //assume this comes from backend
    expandText: expandingText,
    collapseText: collapsingText,
    toggleTextStyle: toggleTextStyle,
  );
}
```

Display text and apply custom style on `@mention` occurances:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    mentionText, //assume this comes from backend
    expandText: expandingText,
    collapseText: collapsingText,
    toggleTextStyle: linkTextStyle,
    mentionStyle: toggleTextStyle,
  );
}
```

Display text and apply custom style on `#hashtag` occurances:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    hashTagText, //assume this comes from backend
    expandText: expandingText,
    collapseText: collapsingText,
    toggleTextStyle: toggleTextStyle,
    hashtagStyle: hashTagTextStyle,
  );
}
```

Display text and apply custom style on `url` occurances:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    urlText, //assume this comes from backend
    expandText: expandingText,
    collapseText: collapsingText,
    toggleTextStyle: toggleTextStyle,
    urlStyle: urlTextStyle,
  );
}
```

Display text and apply custom style on the occurances of `<tag>_some_text_</tag>`:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    tagsText, //assume this comes from backend
    expandText: expandingText,
    collapseText: collapsingText,
    toggleTextStyle: toggleTextStyle,
    customTagStyle: customTagStyle,
  );
}
```

Display text and apply custom style on the occurances of `<tag>_some_text_</tag>`
, `<tag2>_some_text_</tag2>`...`<tagN>_some_text_</tagN>`:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    tagsText, //assume this comes from backend
    expandText: expandingText,
    collapseText: collapsingText,
    toggleTextStyle: toggleTextStyle,
    customTagStyles: customTagStyleMap,
  );
}
```

Display text and apply custom style all togather on the occurances of all mention above:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    allText, //assume this comes from backend
    expandText: expandingText,
    collapseText: collapsingText,
    toggleTextStyle: toggleTextStyle,
    mentionStyle: mentionTextStyle,
    hashtagStyle: hashTagTextStyle,
    customTagStyle: customTagStyle,
  );
}
```

Programmatically handle text expand and collapse:

```dart
 /// a text to collapse and expand programmatically
final expandableRichText = ExpandableRichText(
  plainText,
  expandText: expandingText,
  collapseText: collapsingText,
);

Widget build(BuildContext context) {
  return Row(
    children: [
      "Programmatically Handle Text Toggle",
      const SizedBox(
        width: 20,
      ),
      ElevatedButton(
          onPressed: () =>
          {expandableRichText.toggle?.call()},
          child: const Text("Toggle"))
    ],
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