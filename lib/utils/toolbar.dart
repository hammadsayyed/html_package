import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/src/widgets/custom_icons.dart';

/// Abstract class that all the toolbar classes extend
abstract class Toolbar {
  const Toolbar();
}

/// Style group
class StyleButtons extends Toolbar {
  final bool style;

  const StyleButtons({
    this.style = true,
  });
}

/// Font setting group
class FontSettingButtons extends Toolbar {
  final bool fontName;
  final bool fontSize;
  final bool fontSizeUnit;

  const FontSettingButtons({
    this.fontName = true,
    this.fontSize = true,
    this.fontSizeUnit = true,
  });
}

/// Font group
class FontButtons extends Toolbar {
  final bool bold;
  final bool italic;
  final bool underline;
  // final bool clearAll;
  final bool strikethrough;
  final bool superscript;
  final bool subscript;

  const FontButtons({
    this.bold = true,
    this.italic = true,
    this.underline = true,
    // this.clearAll = true,
    this.strikethrough = true,
    this.superscript = true,
    this.subscript = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (bold) icons.add(CustomIconWrapper(CustomIcons.bold));
    if (italic) icons.add(CustomIconWrapper(CustomIcons.italic));
    if (underline) icons.add(CustomIconWrapper(CustomIcons.underline));
    if (strikethrough) icons.add(CustomIconWrapper(CustomIcons.strikethrough));
    // if (clearAll) icons.add(CustomIconWrapper(CustomIcons.remove_formatting));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    // if (strikethrough) icons.add(CustomIconWrapper(CustomIcons.strikethrough));
    if (superscript) icons.add(Icon(Icons.superscript));
    if (subscript) icons.add(Icon(Icons.subscript));
    return icons;
  }
}

class CustomIconWrapper extends Icon{
  CustomIconWrapper(IconData? icon) : super(icon, size: 18);

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
}

/// Color bar group
class ColorButtons extends Toolbar {
  final bool foregroundColor;
  final bool highlightColor;

  const ColorButtons({
    this.foregroundColor = true,
    this.highlightColor = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (foregroundColor) icons.add(CustomIconWrapper(CustomIcons.text_color));
    if (highlightColor) icons.add(CustomIconWrapper(Icons.format_color_fill));
    return icons;
  }
}

/// List group
class ListButtons extends Toolbar {
  final bool ul;
  final bool ol;
  final bool listStyles;

  const ListButtons({
    this.ul = true,
    this.ol = true,
    this.listStyles = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (ul) icons.add(CustomIconWrapper(CustomIcons.bulleted_list));
    if (ol) icons.add(CustomIconWrapper(CustomIcons.numbered_list));
    return icons;
  }
}

/// Paragraph group
class ParagraphButtons extends Toolbar {
  final bool alignLeft;
  final bool alignCenter;
  final bool alignRight;
  final bool alignJustify;
  final bool increaseIndent;
  final bool decreaseIndent;
  final bool textDirection;
  final bool lineHeight;
  final bool caseConverter;

  const ParagraphButtons({
    this.alignLeft = true,
    this.alignCenter = true,
    this.alignRight = true,
    this.alignJustify = true,
    this.increaseIndent = true,
    this.decreaseIndent = true,
    this.textDirection = true,
    this.lineHeight = true,
    this.caseConverter = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (alignLeft) icons.add(CustomIconWrapper(CustomIcons.ic_text_align_left));
    if (alignCenter) icons.add(CustomIconWrapper(CustomIcons.ic_text_align_center));
    if (alignRight) icons.add(CustomIconWrapper(CustomIcons.ic_text_align_right));
    if (alignJustify) icons.add(Icon(Icons.format_align_justify));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (increaseIndent) icons.add(CustomIconWrapper(CustomIcons.increase_indent));
    if (decreaseIndent) icons.add(CustomIconWrapper(CustomIcons.decrease_indent));
    return icons;
  }
}

/// Insert group
class InsertButtons extends Toolbar {
  final bool link;
  final bool picture;
  final bool audio;
  final bool video;
  final bool otherFile;
  final bool table;
  final bool hr;
  final bool codeview;
  final bool clearAll;

  const InsertButtons({
    this.link = true,
    this.picture = true,
    this.audio = true,
    this.video = true,
    this.otherFile = false,
    this.table = true,
    this.hr = true,
    this.codeview = true,
    this.clearAll = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (link) icons.add(CustomIconWrapper(CustomIcons.insert_link));
    if (picture) icons.add(Icon(Icons.image_outlined));
    if (audio) icons.add(Icon(Icons.audiotrack_outlined));
    if (video) icons.add(Icon(Icons.videocam_outlined));
    if (otherFile) icons.add(CustomIconWrapper(CustomIcons.attach_file));
    if (table) icons.add(CustomIconWrapper(CustomIcons.table));
    if (hr) icons.add(Icon(Icons.horizontal_rule));
    if (codeview) icons.add(CustomIconWrapper(CustomIcons.code));
    if (clearAll) icons.add(CustomIconWrapper(CustomIcons.remove_formatting));
    return icons;
  }
}

/// Miscellaneous group
class OtherButtons extends Toolbar {
  final bool fullscreen;
  final bool codeview;
  final bool undo;
  final bool redo;
  final bool help;
  final bool copy;
  final bool paste;

  const OtherButtons({
    this.fullscreen = true,
    this.codeview = true,
    this.undo = true,
    this.redo = true,
    this.help = true,
    this.copy = true,
    this.paste = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (fullscreen) icons.add(Icon(Icons.fullscreen));
    if (codeview) icons.add(CustomIconWrapper(CustomIcons.code));
    if (undo) icons.add(Icon(Icons.undo));
    if (redo) icons.add(Icon(Icons.redo));
    if (help) icons.add(Icon(Icons.help_outline));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (copy) icons.add(Icon(Icons.copy));
    if (paste) icons.add(Icon(Icons.paste));
    return icons;
  }
}
