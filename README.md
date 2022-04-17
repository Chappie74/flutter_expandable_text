# Flutter Expandable Text

## A customisable flutter package that allows the expanding and collapsing of long text.

<br>

## Getting Started

<hr>

Add package to your pubspec.yaml file

```yaml
dependencies:
    flutter_expandable_text: ^1.0.0
```

then import:

```dart
import 'package:flutter_expandable_text/expandable_text.dart';
```

<br>

## Usage snippet

Trim based on number of character in text

```dart
ExpandableText(
    _text,
    trimType: TrimType.characters,
    trim: 20, // trims if text exceeds 20 characters
);
```

Trim based on number of lines

```dart
ExpandableText(
    _text,
    trimType: TrimType.lines,
    trim: 2, // trims if text exceeds more than 2 lines
    onLinkPressed: (expanded) {

    },
);
```

<br>

![Demo Image](https://i.imgur.com/lZcAl87.gif)

<br>

## Parameters

|      Name       |                                                                                                    Description                                                                                                     | Is It Required |          Default Value          |
| :-------------: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :------------: | :-----------------------------: |
|     `text`      |                                                                                            Input text that is displayed                                                                                            |    **Yes**     |               `-`               |
| `readMoreText`  |                                                                                    Clickable text to display that expands text.                                                                                    |     **No**     |           `read more`           |
| `readLessText`  |                                                                                   Clickable text to display that collapses text                                                                                    |     **No**     |           `read less`           |
| `linkTextStyle` |                                                                               `TextStyle` for both `readMoreText` and `readLessText`                                                                               |     **No**     | `TextStyle(color:Colors.blue)`  |
|     `style`     |                                                                                               `TextStyle` for `text`                                                                                               |     **No**     | `TextStyle(color:Colors.black)` |
|     `trim`      | For `TrimType.lines` this represents the maximum amount of lines allowable before the text is collapsed. For `TrimType.characters` this represents the number of characters allowable before the text is collapsed |     **No**     |               `2`               |
|   `trimType`    |                                                                              Whether to trim `text` by lines or characters in `text`                                                                               |     **No**     |        `TrimType.lines`         |
| `onLinkPressed` |                                                      Callback function when a link is pressed. Returns a boolean `true` is expanded and `false` is collapsed                                                       |     **No**     |             `null`              |

---
