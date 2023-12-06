import 'dart:io';

import 'package:dart_console/dart_console.dart';
import 'package:yaml/yaml.dart';

final console = Console();

Future<void> main(List<String> args) async {
  final pubspec = loadYaml(
    File('dart/pubspec.yaml').readAsStringSync(),
  ) as YamlMap;

  final dependencies = pubspec['dependencies'] as YamlMap;

  for (final e in dependencies.entries) {
    await _run(
      'dart',
      arguments: [
        'pub',
        'global',
        'activate',
        '${e.key}',
        '${e.value}',
        '--overwrite',
      ],
    );
  }
}

Future<void> _run(
  String executable, {
  List<String>? arguments,
}) async {
  final process = await Process.start(
    executable,
    arguments ?? [],
  );
  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);

  console.writeLine('========');
}
