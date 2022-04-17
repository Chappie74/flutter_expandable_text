import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final String _text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
      'eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim '
      'ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut '
      'aliquip ex ea commodo consequat. Duis aute irure dolor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Expandable Text')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trim after 20 characters',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            ExpandableText(
              _text,
              trimType: TrimType.characters,
              trim: 20,
            ),
            const SizedBox(height: 20),
            const Text(
              'Trim after 2 lines',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            ExpandableText(
              _text,
              trimType: TrimType.lines,
              trim: 2,
              onLinkPressed: (expanded) {
                if (kDebugMode) {
                  if (expanded) {
                    print('Was Exapnded');
                  } else {
                    print('Was Collapsed');
                  }
                }
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Custom styling',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            ExpandableText(
              _text,
              trimType: TrimType.lines,
              trim: 2,
              readLessText: 'customised collapse',
              readMoreText: 'customised expand',
              linkTextStyle: const TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold),
              onLinkPressed: (expanded) {
                if (kDebugMode) {
                  if (expanded) {
                    print('Was Exapnded');
                  } else {
                    print('Was Collapsed');
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
