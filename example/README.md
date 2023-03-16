# Example

an example app for `expandable_rich_text` package

### Usage
Minimum usage of ExpandableRichText:
```dart
Widget build(BuildContext context) {
    return  ExpandableRichText(
                plainText, //assume this comes from backend
              );
}
```

Display simple text with option to collapse and expand and apply custome style on toggle text(`see more`/`see less`):
```dart
Widget build(BuildContext context) {
    return  ExpandableRichText(
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
    return  ExpandableRichText(
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
    return  ExpandableRichText(
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
    return  ExpandableRichText(
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
    return  ExpandableRichText(
                tagsText, //assume this comes from backend
                expandText: expandingText,
                collapseText: collapsingText,
                toggleTextStyle: toggleTextStyle,
                customTagStyle: customTagStyle,
              );
}
```

Display text and apply custom style on the occurances of `<tag>_some_text_</tag>`, `<tag2>_some_text_</tag2>`...`<tagN>_some_text_</tagN>`:
```dart
Widget build(BuildContext context) {
    return  ExpandableRichText(
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
    return  ExpandableRichText(
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
    return  Row(
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