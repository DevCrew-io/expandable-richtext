library expandable_richtext;

import 'package:expandable_richtext/expandable_richtext_controller.dart';
import 'package:flutter/material.dart';
import 'package:expandable_richtext/expandable_richtext_state.dart';

typedef StringCallback = void Function(String value);

class ExpandableRichText extends StatefulWidget {
  const ExpandableRichText(
    this.text, {
    this.controller,
    Key? key,
    this.expandText,
    this.collapseText,
    this.expanded = false,
    this.onExpandedChanged,
    this.onToggleTextTap,
    this.toggleTextColor,
    this.showEllipsis = true,
    this.toggleTextStyle,
    this.urlStyle,
    this.onUrlTap,
    this.hashtagStyle,
    this.onHashtagTap,
    this.mentionStyle,
    this.onMentionTap,
    this.customTagStyle,
    this.customTagStyles,
    this.onCustomTagTap,
    this.expandOnTextTap = false,
    this.collapseOnTextTap = false,
    this.style,
    this.textDirection,
    this.textAlign,
    this.textScaleFactor,
    this.maxLines = 2,
    this.animation = false,
    this.animationDuration,
    this.animationCurve,
  }) : super(key: key);

  final String text;

  final ExpandableRichTextController? controller;

  /// text to show to expand text e.g 'see more'
  final String? expandText;

  /// text to show to collapse text e.g 'see less'
  final String? collapseText;

  /// control text toggle
  final bool expanded;

  /// listen for text collapse and expand event
  final ValueChanged<bool>? onExpandedChanged;

  /// listen for click on toggle text(expandText/collapseText)
  final VoidCallback? onToggleTextTap;
  final Color? toggleTextColor;

  ///control show '...' with toggle text
  final bool showEllipsis;
  final TextStyle? toggleTextStyle;
  final TextStyle? urlStyle;
  final StringCallback? onUrlTap;
  final TextStyle? hashtagStyle;
  final StringCallback? onHashtagTap;
  final TextStyle? mentionStyle;
  final StringCallback? onMentionTap;

  /// single style to apply on all custom tags
  final TextStyle? customTagStyle;

  ///multiple styles to apply on multiple custom tags
  final Map<String, TextStyle>? customTagStyles;
  final StringCallback? onCustomTagTap;

  /// control to expand text on tap on whole text
  final bool expandOnTextTap;

  /// control to collapse text on tap on whole text
  final bool collapseOnTextTap;

  /// default text style
  final TextStyle? style;
  final TextDirection? textDirection;
  final TextAlign? textAlign;
  final double? textScaleFactor;
  final int maxLines;

  /// expand and collapse animation
  final bool animation;
  final Duration? animationDuration;
  final Curve? animationCurve;

  /// listen to call widget function [_toggleText] if programmatically want to toggle text
  // late VoidCallback? toggle;

  @override
  State<ExpandableRichText> createState() {
    return ExpandableRichTextState();
  }
}
