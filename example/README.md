# Example

[![pub package](https://img.shields.io/pub/v/expandable_richtext.svg)](https://pub.dev/packages/expandable_richtext)
[![license](https://img.shields.io/badge/license-MIT-green)](https://github.com/DevCrew-io/expandable-richtext/blob/main/LICENSE)
![](https://img.shields.io/badge/Code-Dart-informational?style=flat&logo=dart&color=29B1EE)
![](https://img.shields.io/badge/Code-Flutter-informational?style=flat&logo=flutter&color=0C459C)

an example app for `expandable_richtext` package

### Usage

Minimum usage of ExpandableRichText:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
      text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      ;
  );
}
```

![Minimum usage](https://user-images.githubusercontent.com/85495993/226588005-a2ab73b9-b91d-4367-bf30-f95fe879e33e.png)

Display simple text with option to collapse and expand and apply custome style on toggle
text(`see more`/`see less`):

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
    expandText: 'show more',
    collapseText: 'show less',
    toggleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),);
}
```

![collapse and expand](https://user-images.githubusercontent.com/85495993/226588912-9f6ffdea-c681-4c15-a895-321b7506dc40.png)

Display text and apply custom style on `@mention` occurrences:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    text: "@Lorem Ipsum is simply dummy text of the printing and typesetting @industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an @unknown printer took a galley of type and scrambled it to make a type @specimen book.",
    expandText: 'show more',
    collapseText: 'show less',
    toggleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),
    mentionStyle: const TextStyle(
        color: Colors.blueAccent, fontSize: 16, fontWeight: FontWeight.bold),);
}
```

![@mention occurrences](https://user-images.githubusercontent.com/85495993/226590084-c7dac6b3-880d-40c0-8bfc-93233a7aab2f.png)

Display text and apply custom style on `#hashtag` occurrences:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    text: "#Lorem Ipsum is simply dummy text of the printing and #typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the #1500s, when an unknown printer took a galley of type and scrambled it to make a type #specimen book.",
    expandText: 'show more',
    collapseText: 'show less',
    toggleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),
    hashtagStyle: const TextStyle(
        fontSize: 16, color: Colors.white, backgroundColor: Colors.black87),);
}
```

![#hashtag occurrences](https://user-images.githubusercontent.com/85495993/226593183-072c2a69-34dd-42f3-bf9a-a876f9339c94.png)

Display text and apply custom style on `url` occurrences:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    text: "Lorem Ipsum is simply dummy text of the printing.com and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a www.galley.com of type and scrambled.com it to make a type specimen book.",
    expandText: 'show more',
    collapseText: 'show less',
    toggleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),
    urlStyle: const TextStyle(
        color: Colors.lightBlueAccent, decoration: TextDecoration.underline),);
}
```

![url occurrences](https://user-images.githubusercontent.com/85495993/226593465-ea2806f4-f4d4-45e4-b45f-8b5cb2b886ba.png)

Display text and apply custom style on the occurrences of `<tag>_some_text_</tag>`:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    "<tag1>Lorem Ipsum</tag1> is simply dummy text of the printing and typesetting <tag2>industry</tag2>. <tag1>Lorem Ipsum</tag1> has been the <tag2>industry's standard</tag2> dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    expandText: 'show more',
    collapseText: 'show less',
    toggleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),
    customTagStyle: const TextStyle(fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 16,
        color: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        decoration: TextDecoration.underline),);
}
```

![occurrences of <tag>_
some_text_</tag>](https://user-images.githubusercontent.com/85495993/226593777-c74b0c28-c287-494e-8470-87d2a6216f59.png)

Display text and apply custom style on the occurrences of `<tag>_some_text_</tag>`
, `<tag2>_some_text_</tag2>`...`<tagN>_some_text_</tagN>`:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    "<tag1>Lorem Ipsum</tag1> is simply dummy text of the printing and typesetting <tag2>industry</tag2>. <tag1>Lorem Ipsum</tag1> has been the <tag2>industry's standard</tag2> dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    expandText: 'show more',
    collapseText: 'show less',
    toggleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),
    customTagStyles: {
      'tag1': customTagStyle,
      'tag2': mentionTextStyle,
      'tag3': hashTagTextStyle,
      'tag4': urlTextStyle,
    },);
}
```

![Multiple Custom Tag](https://user-images.githubusercontent.com/85495993/226594498-a4b976f2-cdad-499c-b351-e1607a9e8ed6.png)

Display text and apply custom style all togather on the occurrences of all mention above:

```dart
Widget build(BuildContext context) {
  return ExpandableRichText(
    text: "Lorem ipsum dolor sit amet..., #consetetur @sadipscing elitr, <tag1>I am Admin1</tag1> tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. <tag2>I am employee1</tag2> At vero eos et accusam et justo duo dolores et ea rebum Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum www.galley.com dolor sit amet.",
    expandText: 'show more',
    collapseText: 'show less',
    toggleTextStyle: const TextStyle(
        fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),
    mentionStyle: const TextStyle(
        color: Colors.blueAccent, fontSize: 16, fontWeight: FontWeight.bold),
    hashtagStyle: const TextStyle(
        fontSize: 16, color: Colors.white, backgroundColor: Colors.black87),
    customTagStyle: const TextStyle(fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 16,
        color: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        decoration: TextDecoration.underline),);
}
```

![All Text](https://user-images.githubusercontent.com/85495993/226594747-6d0927cf-7889-4d4f-9601-f3532f5c56be.png)

Programmatically handle text expand and collapse:

```dart
 /// a text to collapse and expand programmatically
final expandableRichText = ExpandableRichText(
  text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
  expandText: expandingText,
  collapseText: collapsingText,);

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

![Programmatically Handle Text Toggle](https://user-images.githubusercontent.com/85495993/226595120-29d45f7c-34d5-49fb-b07f-8d5fd0e46fd1.png)

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

Code copyright 2023–2024 DevCrew I/O. Code released under
the [MIT license](https://github.com/DevCrew-io/expandable-richtext/blob/main/LICENSE).