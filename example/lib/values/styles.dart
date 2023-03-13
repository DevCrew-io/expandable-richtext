import 'package:flutter/material.dart';

TextStyle titleTextStyle = const TextStyle(color: Colors.black, fontSize: 24);

TextStyle linkTextStyle = const TextStyle(
    fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline);

TextStyle mentionTextStyle = const TextStyle(
    color: Colors.blueAccent, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle hashTagTextStyle = const TextStyle(
    fontSize: 16, color: Colors.white, backgroundColor: Colors.black87);

TextStyle urlTextStyle = const TextStyle(
    color: Colors.lightBlueAccent, decoration: TextDecoration.underline);

TextStyle customTagStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    fontSize: 16,
    color: Colors.white,
    backgroundColor: Colors.lightBlueAccent,
    decoration: TextDecoration.underline);

Map<String, TextStyle> customTagStyleMap = {
  'tag1': customTagStyle,
  'tag2': mentionTextStyle,
  'tag3': hashTagTextStyle,
  'tag4': urlTextStyle,
};
