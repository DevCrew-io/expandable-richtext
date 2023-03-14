import 'package:example/values/strings.dart';
import 'package:example/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:expandable_rich_text/expandable_rich_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Expandable Rich Text Example";
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //margin
    const verticalMargin = SizedBox(
      height: 20,
    );
    const titleMargin = SizedBox(
      height: 8,
    );

    //simple text
    Text simpleTextTitle = Text(
      titleSimpleText,
      style: titleTextStyle,
    );

    //simple expandable text
    Text simpleExpandableTextTitle = Text(
      titleSimpleExpandableText,
      style: titleTextStyle,
    );

    //mention text
    Text mentionTextTitle = Text(
      titleMentionText,
      style: titleTextStyle,
    );

    //hashtag text
    Text hashtagTextTitle = Text(
      titleHashtagText,
      style: titleTextStyle,
    );

    //url text
    Text urlTextTitle = Text(
      titleUrlText,
      style: titleTextStyle,
    );

    //custom tag text
    Text customTagTitle = Text(
      titleCustomTagText,
      style: titleTextStyle,
    );

    //multiple custom tag text
    Text multiCustomTagTitle = Text(
      titleMultipleCustomTagText,
      style: titleTextStyle,
    );

    //all text
    Text allTextTitle = Text(
      titleAllText,
      style: titleTextStyle,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              simpleTextTitle,
              titleMargin,
              const ExpandableRichText(
                plainText, //assume this comes from backend
              ),
              verticalMargin,
              simpleExpandableTextTitle,
              titleMargin,
              ExpandableRichText(
                plainText, //assume this comes from backend
                expandText: expandingText,
                collapseText: collapsingText,
                toggleTextStyle: linkTextStyle,
              ),
              verticalMargin,
              mentionTextTitle,
              titleMargin,
              ExpandableRichText(
                mentionText, //assume this comes from backend
                expandText: expandingText,
                collapseText: collapsingText,
                toggleTextStyle: linkTextStyle,
                mentionStyle: mentionTextStyle,
              ),
              verticalMargin,
              hashtagTextTitle,
              titleMargin,
              ExpandableRichText(
                hashTagText, //assume this comes from backend
                expandText: expandingText,
                collapseText: collapsingText,
                toggleTextStyle: linkTextStyle,
                hashtagStyle: hashTagTextStyle,
              ),
              verticalMargin,
              urlTextTitle,
              titleMargin,
              ExpandableRichText(
                urlText, //assume this comes from backend
                expandText: expandingText,
                collapseText: collapsingText,
                toggleTextStyle: linkTextStyle,
                urlStyle: urlTextStyle,
              ),
              verticalMargin,
              customTagTitle,
              titleMargin,
              ExpandableRichText(
                tagsText, //assume this comes from backend
                expandText: expandingText,
                collapseText: collapsingText,
                toggleTextStyle: linkTextStyle,
                customTagStyle: customTagStyle,
              ),
              verticalMargin,
              multiCustomTagTitle,
              titleMargin,
              ExpandableRichText(
                tagsText, //assume this comes from backend
                expandText: expandingText,
                collapseText: collapsingText,
                toggleTextStyle: linkTextStyle,
                customTagStyles: customTagStyleMap,
              ),
              verticalMargin,
              allTextTitle,
              titleMargin,
              ExpandableRichText(
                allText, //assume this comes from backend
                expandText: expandingText,
                collapseText: collapsingText,
                toggleTextStyle: linkTextStyle,
                mentionStyle: mentionTextStyle,
                hashtagStyle: hashTagTextStyle,
                customTagStyle: customTagStyle,
              ),
              verticalMargin,
            ],
          )),
    );
  }
}
