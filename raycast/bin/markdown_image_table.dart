import 'dart:io';

import 'package:args/args.dart';
import 'package:raycast/markdown_image_table.dart';

Future<void> main(List<String> args) async {
  final argParser = ArgParser()..addOption('column');
  final result = argParser.parse(args);

  final text = Process.runSync('pbpaste', []).stdout as String;
  final columnCount = int.parse(result['column'] as String);

  final output = MarkdownImageTable(
    text: text,
    columnCount: columnCount,
  ).exec();

  stdout.write(output);
}
