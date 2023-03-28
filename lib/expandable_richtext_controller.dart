import 'package:expandable_richtext/expandable_richtext_state.dart';

class ExpandableRichTextController {
  late ExpandableRichTextState _state;

  void setState(ExpandableRichTextState state) {
    _state = state;
  }

  /// call widget function [toggleText] if programmatically want to toggle text
  void toggleText() {
    _state.toggleText();
  }
}
