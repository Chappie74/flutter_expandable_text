# Flutter Expandable Text 

<h3>A customisable flutter package that allows the expanding and collapsing of long text. </h3>
 
 [pub.dev](https://pub.dev/packages/flutter_expandable_text)

<br>

## Getting Started 

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

<br>

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/Chappie74/flutter_expandable_text/issues).

If you fixed a bug or implemented a new feature, please send a [pull request](https://github.com/Chappie74/flutter_expandable_text/pulls).
